import 'package:dio/dio.dart';

class ApiService {
  final baseUrl = '';
  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String,dynamic>> get({required String endpoint}) async {

  var response = await dio.get('$baseUrl$endpoint');

  return response.data;
  }




}

