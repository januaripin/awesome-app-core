import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final int code;
  final String? message;

  const Failure({this.code = 0, this.message});

  @override
  List<Object> get props => [code];
}

class NoInternetFailure extends Failure {
  const NoInternetFailure(
      {String message = 'Please check your connection internet!'})
      : super(message: message);
}

class ServerFailure extends Failure {
  const ServerFailure({int code = 0, String? message})
      : super(message: message);
}

class ResponseFailure extends Failure {
  const ResponseFailure({int code = 0, String? message})
      : super(message: message);
}
