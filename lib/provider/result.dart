
import 'package:freezed_annotation/freezed_annotation.dart';

@sealed
class Result<T> {
  Result();

  factory Result.success(T value) = Success;
}

class Success<T> extends Result<T> {
  Success(this.value);

  final T value;
}

class Loading extends Result {

}