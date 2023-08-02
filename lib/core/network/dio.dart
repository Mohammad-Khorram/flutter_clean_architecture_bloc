import 'package:dio/dio.dart';
import 'package:store/config/boiler/util_boiler.dart';

class DioCore {
  late Dio dio;
  late Map<String, String> header;
  late Map<String, String> headerWithToken;

  DioCore(this.dio) {
    dio = Dio();
    header = {'Content-Type': 'application/json', 'Connection': 'keep-alive'};
    headerWithToken = {
      'Content-Type': 'application/json',
      'Connection': 'keep-alive',
      'Authorization': 'Bearer ${InjectionCore.instance<UserCore>().token()}'
    };
  }

  Future<Response> get({
    required String path,
    final dynamic queryParameters,
    final Map<String, String>? headers,
  }) async {
    return await dio.get(
      path,
      queryParameters: queryParameters,
      options: Options(headers: headers ?? header),
    );
  }

  Future<Response> post({
    required String path,
    final Object? data,
    final dynamic queryParameters,
    final Map<String, String>? headers,
  }) async {
    return await dio.post(
      path,
      queryParameters: queryParameters,
      data: data,
      options: Options(headers: headers ?? header),
    );
  }

  Future<Response> patch({
    required String path,
    final dynamic queryParameters,
    final Map<String, String>? headers,
  }) async {
    return await dio.patch(
      path,
      queryParameters: queryParameters,
      options: Options(headers: headers ?? header),
    );
  }

  Future<Response> put({
    required String path,
    final dynamic queryParameters,
    final Map<String, String>? headers,
  }) async {
    return await dio.put(
      path,
      queryParameters: queryParameters,
      options: Options(headers: headers ?? header),
    );
  }

  Future<Response> delete({
    required String path,
    final dynamic queryParameters,
    final Map<String, String>? headers,
  }) async {
    return await dio.delete(
      path,
      queryParameters: queryParameters,
      options: Options(headers: headers ?? header),
    );
  }
}
