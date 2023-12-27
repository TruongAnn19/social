import 'dart:async';
import 'dart:math';

import 'package:social_network/config/base/base_cubit.dart';
import 'package:social_network/data/helper/firebase/firebase_store.dart';
import 'package:social_network/domain/locals/prefs_service.dart';
import 'package:social_network/domain/model/notify/notification_model.dart';
import 'package:social_network/domain/model/post_model.dart';
import 'package:social_network/domain/model/user_model.dart';
import 'package:social_network/presentation/notification/bloc/screen_stype.dart';
import 'package:social_network/presentation/tabbar_screen/bloc/main_state.dart';
import 'package:social_network/presentation/tabbar_screen/ui/tabbar_item.dart';
import 'package:social_network/utils/constants/dafault_env.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';

class MainCubit extends BaseCubit<MainState> {
  MainCubit() : super(MainStateInitial());
  final BehaviorSubject<TabBarType> _selectTabBar =
      BehaviorSubject<TabBarType>.seeded(TabBarType.home);

  Stream<TabBarType> get selectTabBar => _selectTabBar.stream;

  Stream<bool> isNotiStream() {
    return FirebaseFirestore.instance
        .collection(DefaultEnv.socialNetwork)
        .doc(DefaultEnv.develop)
        .collection(DefaultEnv.users)
        .doc(PrefsService.getUserId())
        .collection(DefaultEnv.noifications)
        .orderBy('create_at', descending: true)
        .snapshots()
        .transform(
      StreamTransformer.fromHandlers(
        handleData: (docSnap, sink) async {
          if (docSnap.docs.isNotEmpty) {
            final List<NotificationModel> result = [];
            for (final e in docSnap.docs) {
              final noti = NotificationModel.fromJson(e.data());

              result.add(noti);
            }

            for (final NotificationModel e in result) {
              if (!e.isRead) {
                sink.add(true);
                return;
              }
            }

            sink.add(false);
          }
        },
      ),
    );
  }

  void selectTab(TabBarType tab) {
    _selectTabBar.sink.add(tab);
  }

  void dispose() {
    _selectTabBar.close();
  }
}
