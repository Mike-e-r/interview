abstract class Result<T> {}

class Success<T> extends Result<T> {
  final T data;

  Success(this.data);
}

class Failure<T> extends Result<T> {
  final int code;
  final String message;

  Failure(this.code, this.message);
}