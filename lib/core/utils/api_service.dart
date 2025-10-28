import 'package:dio/dio.dart';

class ApiService {
  final baseUrl = '';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String,dynamic>> get({required String endpoint}) async {

  var response = await _dio.get('$baseUrl$endpoint');

  return response.data;
  }




}

