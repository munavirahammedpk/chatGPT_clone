part of 'img_gen_bloc.dart';

@freezed
class ImgGenState with _$ImgGenState {
  const factory ImgGenState(
    {
      required String id,
      required bool isloading,
      required bool isError,
      required List<ChatMessage> chatMessageList,
    }
  ) = _ImgGenState;

}
