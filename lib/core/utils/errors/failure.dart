import 'package:dio/dio.dart';

class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerError extends Failure {
  ServerError({required super.errorMessage});
  factory ServerError.fromDioException({required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerError(errorMessage: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerError(errorMessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerError(errorMessage: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerError(errorMessage: 'badCertificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerError.fromDioResponse(
          reponse: dioException.response!.data,
          statusCode: dioException.response!.statusCode,
        );
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerError(errorMessage: 'No Internet Connection');
        }
        return ServerError(errorMessage: 'Unexpected Error, Please try again!');
      default:
        return ServerError(
          errorMessage: 'Opps There was an Error, Please try again',
        );
    }
  }
  factory ServerError.fromDioResponse({int? statusCode, dynamic reponse}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerError(errorMessage: reponse['error']["message"]);
    } else if (statusCode == 404) {
      return ServerError(
        errorMessage: 'Your request not found, Please try later!',
      );
    } else if (statusCode == 500) {
      return ServerError(
        errorMessage: 'Internal Server error, Please try later',
      );
    } else {
      return ServerError(
        errorMessage: " Opps there was an error, plase tyr again",
      );
    }
  }
}
