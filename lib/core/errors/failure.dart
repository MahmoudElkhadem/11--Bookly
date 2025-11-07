import 'package:dio/dio.dart';

abstract class Failure {
  final String errmessage;

  const Failure(this.errmessage);

}

class ServerFailure extends Failure{
  ServerFailure(super.errmessage);
  factory ServerFailure.fromDioError(DioException dioError)
  {
    switch(dioError.type)
    {

      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with api server');
      case DioExceptionType.badCertificate:
      return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.badResponse:
      return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
      return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.connectionError:
      return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.unknown:
              return ServerFailure('Receive timeout with api server');

    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response)
  {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    }
    else if ( statusCode == 404) {
      return ServerFailure('Your Request not found, please Try again later!');

    }
    else if (statusCode == 405) {
      return ServerFailure('Internal Server error, please try again later!');
    }
    else {
      return ServerFailure('Opps , there was error, Please try again later');
    }
  }
}