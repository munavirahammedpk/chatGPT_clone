import 'package:bloc/bloc.dart';
import 'package:chat_gpt/Domain/chat_service.dart';
import 'package:chat_gpt/Domain/models/chat_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'generate_response_event.dart';
part 'generate_response_state.dart';
part 'generate_response_bloc.freezed.dart';

@injectable
class GenerateResponseBloc
    extends Bloc<GenerateResponseEvent, GenerateResponseState> {
  final ApiCalls _apiCalls;
  List<ChatMessage> messageList = [];
  GenerateResponseBloc(this._apiCalls)
      : super(GenerateResponseState.initial()) {
    on<GenerateResponseEvent>(
      (event, emit) async {
        messageList.add(
          ChatMessage(
            text: event.query,
            chatMessageType: ChatMessageType.user,
          ),
        );
        emit(
          GenerateResponseState(
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
        final response = await _apiCalls.generateResp(event.query);
        final newState = response.fold((failure) {
          return GenerateResponseState(
            id: DateTime.now().microsecondsSinceEpoch.toString(),
            isloading: false,
            isError: true,
            chatMessageList: state.chatMessageList,
          );
        }, (text) {
          messageList.add(
            ChatMessage(
              text: text,
              chatMessageType: ChatMessageType.bot,
            ),
          );
          return GenerateResponseState(
            id: DateTime.now().microsecondsSinceEpoch.toString(),
            isloading: false,
            isError: false,
            chatMessageList: messageList,
          );
        });
        emit(newState);
      },
    );
  }
}
