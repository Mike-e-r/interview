import 'package:dio/dio.dart';
import 'package:interview/network/Result.dart';
import 'package:interview/network/error_handling/ApiFailures.dart';

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error, {dynamic localData}) {
    if (error is DioException) {
      failure = _handleError(error, localData: localData);
    }
  }

  Failure _handleError(DioException error, {dynamic localData}) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ApiFailures.CONNECT_TIMEOUT.getResult(localData: localData);
      case DioExceptionType.sendTimeout:
        return ApiFailures.SEND_TIMEOUT.getResult(localData: localData);
      case DioExceptionType.receiveTimeout:
        return ApiFailures.RECEIVE_TIMEOUT.getResult(localData: localData);
      case DioExceptionType.badResponse:
          return Failure(error.response?.statusCode ?? 0, error.response?.statusMessage ?? "");
      case DioExceptionType.cancel:
        return ApiFailures.CANCEL.getResult(localData: localData);
      default:
        return ApiFailures.DEFAULT.getResult(localData: localData);
    }
  }
}
