import 'package:chat_gpt/Domain/failures/main_failures.dart';
import 'package:dartz/dartz.dart';

abstract class ApiCalls {
  Future<Either<MainFailure,String>> generateResp(String query);
  Future<Either<MainFailure,String>> generateImg(String prompt);
}