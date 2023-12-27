import 'dart:developer';

import 'package:social_network/config/base/base_cubit.dart';
import 'package:social_network/config/default_env.dart';
import 'package:social_network/config/firebase_config.dart';
import 'package:social_network/data/services/message_service.dart';
import 'package:social_network/data/services/profile_service.dart';
import 'package:social_network/domain/locals/prefs_service.dart';

import 'package:social_network/domain/model/message_model/room_chat_model.dart';
import 'package:social_network/domain/model/profile_model.dart/friend_model.dart';
import 'package:social_network/domain/model/relationship_model.dart';
import 'package:social_network/domain/model/user_model.dart';
import 'package:social_network/domain/repository/user_repository.dart';
import 'package:social_network/presentation/block_list/block_list_state.dart';
import 'package:social_network/presentation/main_message/bloc/main_message_state.dart';

import 'package:social_network/utils/extensions/string_extension.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:rxdart/rxdart.dart';

class BlockListCubit extends BaseCubit<BlockListState> {
  BlockListCubit() : super(BlockListStateStateIntial());

  final BehaviorSubject<List<UserModel>> _getBlockList =
      BehaviorSubject<List<UserModel>>();

  Stream<List<UserModel>> get getBlockList => _getBlockList.stream;
  final idUser = PrefsService.getUserId();
  List<UserModel> blockList = [];
  Future<void> fetchFriends(String id) async {
    showLoading();
    // final result = await ProfileService.blocklist(id);
    final listIdFriend = await ProfileService.getIdsRelationShipUser();
    final listsIdFriendRequest = await ProfileService.getIdsFriendRequestUser();
    final idUser = PrefsService.getUserId();
    final List<UserModel> data = [];
    try {
      FirebaseSetup.fireStore
          .collection(DefaultEnv.usersCollection)
          .doc(id)
          .collection(DefaultEnv.relationshipsCollection)
          .snapshots()
          .listen((event) async {
        if (event.docs == null) {
          return null;
        } else {
          data.clear();
          blockList.clear();
          for (var element in event.docs) {
            final vl = FriendModel.fromJson(element.data());
            if (vl.userId2 != idUser) {
              final user = await ProfileService.getUserChat(vl.userId2);
              if (user != null) {
                user.peopleType = ProfileService.peopleType(
                    user.userId ?? '', listsIdFriendRequest, listIdFriend, vl);

                if (user.peopleType == PeopleType.Block) {
                  data.add(user);
                }
              }
            }
          }
          final setData = <UserModel>[];
          for (var element in data) {
            if (setData.map((e) => e.userId).contains(element.userId) ==
                false) {
              setData.add(element);
            }
          }

          blockList = setData;
          showContent();
          _getBlockList.sink.add(setData);
        }
      });
    } catch (e) {
      log(e.toString());
      showError();
    }
  }

  Future<void> discardRelationship(UserModel userModel) async {
    showLoading();

    try {
      final ownerId = await PrefsService.getUserId();
      log(ownerId);
      final result = await FirebaseFirestore.instance
          .collection(DefaultEnv.appCollection)
          .doc(DefaultEnv.developDoc)
          .collection(DefaultEnv.usersCollection)
          .doc(userModel.userId)
          .collection('relationships')
          .where('user_id2', isEqualTo: ownerId)
          .get();
      log(result.docs.toString());
      RelationshipModel rela = RelationshipModel(
          user2: UserModel(userId: ownerId),
          user1: UserModel(userId: userModel.userId),
          createAt: DateTime.now().millisecondsSinceEpoch,
          updateAt: DateTime.now().millisecondsSinceEpoch,
          type: 2,
          relationshipId: result.docs.first.id);
      final resultdecline =
          await UserRepopsitory().discardRelationship(relationshipModel: rela);
    } catch (e) {
      log('lllllllllllllllllllllllllllll');
      log(e.toString());
      showError();
    }
  }

  void searchUser(String keySearch) {
    if (keySearch.isEmpty) {
      _getBlockList.sink.add(blockList);
      return;
    }
    final data = blockList
        .where((element) => element.nameDisplay == null
            ? false
            : element.nameDisplay!
                .toLowerCase()
                .vietNameseParse()
                .contains(keySearch.toLowerCase().vietNameseParse()))
        .toList();
    _getBlockList.sink.add(data);
  }
}
