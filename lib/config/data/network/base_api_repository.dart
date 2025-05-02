import 'dart:async';

abstract class BaseApiRepository {
  Future<dynamic> getApi(String url);

  Future<dynamic> postApi(String url, var data);

  Future<dynamic> deleteApi(String url);

  Future<dynamic> getAppointment(String url);
}
