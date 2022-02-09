class Result<T> {
  final T? data;
  final ErrorObject? error;

  Result(this.data, this.error);
}

class ErrorObject<T> {
  Exception exception;
  T? data;

  ErrorObject(this.exception, this.data);
}