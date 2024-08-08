import 'package:movies_app/infrastructure/common/api_response_model.dart';

class ApiResponseException implements Exception {
  final ApiResponseModel model;
  final String message;

  ApiResponseException(this.model, this.message);

  @override
  String toString() => "$message ${model.errorMsg}";
}

class DefaultException implements Exception {
  final String? _message;

  DefaultException(this._message);

  @override
  String toString() => _message ?? "No internet connection";
}

class PreConditinoException extends ApiResponseException {
  PreConditinoException(ApiResponseModel model) : super(model, 'Error: ');

  @override
  String toString() => model.errorMsg;
}

class ApiResponseNotValidException extends DefaultException {
  ApiResponseNotValidException()
      : super('Server error, please report this to us');
}

class TimeoutException extends DefaultException {
  TimeoutException()
      : super('Problem with connection timeout, please try again');
}

class NoInternetException extends DefaultException {
  NoInternetException() : super('No internet connection');
}

class UnknownException extends DefaultException {
  UnknownException(e)
      : super(
          e != null ? e.toString() : 'Unknown error, please report this to us',
        );
}
