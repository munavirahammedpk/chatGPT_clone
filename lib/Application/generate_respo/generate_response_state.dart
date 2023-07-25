part of 'generate_response_bloc.dart';

@freezed
class GenerateResponseState with _$GenerateResponseState {
  const factory GenerateResponseState({
    required String id,
    required bool isloading,
    required bool isError,
    required List<ChatMessage> chatMessageList,
  }) = _GenerateResponseState;
  factory GenerateResponseState.initial() {
    return GenerateResponseState(
      isloading: false,
      isError: false,
      chatMessageList: [],
      id: DateTime.now().microsecondsSinceEpoch.toString(),
    );
  }
}
