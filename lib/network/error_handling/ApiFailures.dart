import 'dart:io';
import 'package:interview/i18n/strings.g.dart';
import 'package:interview/network/Result.dart';

enum ApiFailures {
  BAD_REQUEST,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECEIVE_TIMEOUT,
  SEND_TIMEOUT,
  NO_INTERNET_CONNECTION,
  DEFAULT
}

class ResponseCode {
  static const int CANCEL = -1;
  static const int RECEIVE_TIMEOUT = -2;
  static const int SEND_TIMEOUT = -3;
  static const int NO_INTERNET_CONNECTION = -4;
  static const int DEFAULT = -5;
}

extension ApiFailuresExtension<T> on ApiFailures {
  Failure getResult({dynamic localData}) {
    switch (this) {
      case ApiFailures.BAD_REQUEST:
        return Failure(HttpStatus.badRequest, t.common_response_message_bad_request,);
      case ApiFailures.INTERNAL_SERVER_ERROR:
        return Failure(HttpStatus.internalServerError, t.common_response_message_internal_server_error, );
      case ApiFailures.CANCEL:
        return Failure(ResponseCode.CANCEL, t.common_response_message_internal_server_error,);
      case ApiFailures.RECEIVE_TIMEOUT:
        return Failure(ResponseCode.RECEIVE_TIMEOUT, t.common_response_message_internal_server_error,);
      case ApiFailures.SEND_TIMEOUT:
        return Failure(ResponseCode.SEND_TIMEOUT, t.common_response_message_internal_server_error,);
      case ApiFailures.NO_INTERNET_CONNECTION:
        return Failure(ResponseCode.NO_INTERNET_CONNECTION, t.common_response_message_internal_server_error,);
      case ApiFailures.CONNECT_TIMEOUT:
        return Failure(HttpStatus.networkConnectTimeoutError, t.common_response_message_timeout,);
      case ApiFailures.DEFAULT:
        return Failure(ResponseCode.DEFAULT, t.common_response_message_default,);
    }
  }
}
