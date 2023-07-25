part of 'img_gen_bloc.dart';

@freezed
class ImgGenEvent with _$ImgGenEvent {
  const factory ImgGenEvent.generateImg({
    required String prompt,
  }) = GenerateImg;
}
