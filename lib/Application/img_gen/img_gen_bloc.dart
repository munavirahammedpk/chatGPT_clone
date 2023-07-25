import 'package:bloc/bloc.dart';
import 'package:chat_gpt/Domain/chat_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../Domain/models/chat_model.dart';

part 'img_gen_event.dart';
part 'img_gen_state.dart';
part 'img_gen_bloc.freezed.dart';

@injectable
class ImgGenBloc extends Bloc<ImgGenEvent, ImgGenState> {
  final ApiCalls _apiCalls;
  List<ChatMessage> messageList = [];
  ImgGenBloc(this._apiCalls)
      : super(_ImgGenState(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          isloading: false,
          isError: false,
          chatMessageList: [],
        )) {
    on<ImgGenEvent>((event, emit) async {
      messageList.add(
        ChatMessage(text: event.prompt, chatMessageType: ChatMessageType.user),
      );
      emit(
        ImgGenState(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          isloading: false,
          isError: false,
          chatMessageList: messageList,
        ),
      );
      emit(
        state.copyWith(
          isloading: true,
        ),
      );
      final response = await _apiCalls.generateImg(event.prompt);
      final newState = response.fold(
          (failure) => ImgGenState(
                id: DateTime.now().microsecondsSinceEpoch.toString(),
                isloading: false,
                isError: true,
                chatMessageList: messageList,
              ), (data) {
        messageList.add(
          ChatMessage(
            text: data,
            chatMessageType: ChatMessageType.bot,
          ),
        );
        return ImgGenState(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          isloading: false,
          isError: false,
          chatMessageList: messageList,
        );
      });
      emit(newState);
    });
  }
}
