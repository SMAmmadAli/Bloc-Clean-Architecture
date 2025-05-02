import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';

import 'package:bloc_clean_architecture/config/data/exceptions/app_exceptions.dart';
import 'package:bloc_clean_architecture/config/data/network/base_api_repository.dart';

class NetworkServiceApi implements BaseApiRepository {
  @override
  Future getApi(String url) async {
    try {
      final dio = Dio();

      void getHttp() async {
        final response = await dio.get('https://dart.dev');
        print(response);
      }
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw FetchDataException();
    }
    // try {
    //   final response = await atCareApi.signIn(

    //   );
    //   return Result.success(objectMapper.toSignIn(response));
    // } on Exception catch (e) {
    //   logger.e(e);
    //   return Result.failed(objectMapper.toError(e));
    // }
  }

  @override
  Future postApi(String url, data) {
    // TODO: implement postApi
    throw UnimplementedError();
  }

  @override
  Future deleteApi(String url) {
    // TODO: implement deleteApi
    throw UnimplementedError();
  }

  @override
  Future getAppointment(String url) {
    // TODO: implement getAppointment
    throw UnimplementedError();
  }
}
