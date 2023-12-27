import 'package:social_network/config/base/base_cubit.dart';
import 'package:social_network/data/services/message_service.dart';
import 'package:social_network/domain/locals/prefs_service.dart';

import 'package:social_network/domain/model/message_model/room_chat_model.dart';
import 'package:social_network/presentation/main_message/bloc/main_message_state.dart';

import 'package:rxdart/rxdart.dart';

class MainMessageCubit extends BaseCubit<MainMessageState> {
  MainMessageCubit() : super(MainMessageStateIntial()) {}

  final BehaviorSubject<List<RoomChatModel>> _getRoomChat =
      BehaviorSubject<List<RoomChatModel>>();

  Stream<List<RoomChatModel>> get getRoomChat => _getRoomChat.stream;
  final idUser = PrefsService.getUserId();
  void fetchRoom() {
    MessageService.idRoomChat = {};
    showLoading();
    MessageService.getRoomChat(idUser)?.listen((event) {
      showContent();
      _getRoomChat.sink.add(event);
    });
  }

  void dispose() {
    _getRoomChat.close();
  }
}
