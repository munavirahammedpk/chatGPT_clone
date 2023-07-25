part of 'generate_response_bloc.dart';

@freezed
class GenerateResponseEvent with _$GenerateResponseEvent {
  const factory GenerateResponseEvent.generateResp({
    required String query,
  }) = GenerateResp;
}