import 'dart:developer';

import 'package:chat_gpt/Domain/chat_service.dart';
import 'package:chat_gpt/Presentation/constants/api_key.dart';
import 'package:chat_gpt/Presentation/constants/urls.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../Domain/failures/main_failures.dart';

@LazySingleton(as: ApiCalls)
class ChatImplementation implements ApiCalls {
  @override
  Future<Either<MainFailure, String>> generateResp(String query) async {
    final dio = Dio();
    try {
      final _result = await dio.post(
        url,
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $apiKey'
        }),
        data: {
          "model": "text-davinci-003",
          "prompt": query,
          "max_tokens": 2000,
          "temperature": 0,
          "top_p": 1,
          "n": 1,
        },
      );
      if (_result.statusCode == 200 || _result.statusCode == 201) {
        Map<String, dynamic> newResponse = _result.data;
        String text = '${newResponse['choices'][0]['text']}';
        return Right(text);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, String>> generateImg(String prompt) async {
    final dio = Dio();
    try {
      final result = await dio.post(
        url2,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $apiKey'
          },
        ),
        data: {
          "prompt": prompt,
          "n": 1,
          // "size": "512x512",
        },
      );
      if (result.statusCode == 200 || result.statusCode == 201) {
        Map<String, dynamic> newResponse = result.data;
        String text = '${newResponse['data'][0]['url']}';
        return Right(text);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
