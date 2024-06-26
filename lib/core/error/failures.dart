import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class UnknownFailure extends Failure {
  UnknownFailure(String message) : super(message);
}

class LocalDataFailure extends Failure {
  LocalDataFailure(String message) : super(message);
}
