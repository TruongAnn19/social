import 'dart:developer';
import 'package:social_network/config/base/base_cubit.dart';
import 'package:social_network/config/default_env.dart';
import 'package:social_network/data/helper/firebase/firebase_authentication.dart';
import 'package:social_network/data/helper/firebase/firebase_store.dart';
import 'package:social_network/domain/locals/hive_local.dart';
import 'package:social_network/domain/locals/prefs_service.dart';
import 'package:social_network/domain/model/post_model.dart';
import 'package:social_network/domain/model/user_model.dart';
import 'package:social_network/domain/repository/post_repository.dart';
import 'package:social_network/domain/repository/user_repository.dart';
import 'package:social_network/presentation/personal/bloc/personal_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:rxdart/subjects.dart';

class PersonalCubit extends BaseCubit<PersonalState> {
  PersonalCubit() : super(PersonalStateInitial()) {
    userId = PrefsService.getUserId();
    log(userId);
    getUserInfo(userId);
  }

  String userId = '';

  final BehaviorSubject<UserModel> _user =
      BehaviorSubject<UserModel>.seeded(UserModel());

  Stream<UserModel> get user => _user.stream;

  final UserRepopsitory _userRepopsitory = UserRepopsitory();

  Future<void> getUserInfo(userId) async {
    showLoading();
    try {
      FirebaseFirestore.instance
          .collection(DefaultEnv.appCollection)
          .doc(DefaultEnv.developDoc)
          .collection(DefaultEnv.usersCollection)
          .doc(userId)
          .collection('profile')
          .snapshots()
          .listen((event) async {
        if (event.docs == null) {
          return null;
        } else {
          Map<String, dynamic> data = Map<String, dynamic>();
          for (var y in event.docs) {
            data = y.data();
            data.addAll({'user_id': userId});
          }

          _user.sink.add(UserModel.fromJson(data));
          showContent();
        }
      });
    } catch (e) {
      log(e.toString());
      showError();
    }
  }

  Future<void> logOut() async {
    final UserModel userInfo = HiveLocal.getDataUser() ?? UserModel.empty();
    await FireStoreMethod.deleteToken(
      token: PrefsService.getToken(),
      userId: userInfo.userId ?? '',
    );
    await PrefsService.removeTokken();
    userInfo.onlineFlag = false;
    await FireStoreMethod.updateUser(userInfo.userId ?? '', userInfo);
    await PrefsService.removeUserId();
    await PrefsService.removePasswordPresent();
    await PrefsService.removeIsInfo();
    await HiveLocal.removeDataUser();
    FirebaseMessaging.instance.deleteToken();
  }
}
