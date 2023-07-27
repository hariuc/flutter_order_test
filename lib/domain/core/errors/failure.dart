abstract class Failure {}

class ServerFailure extends Failure {
  final dynamic errorObject;

  ServerFailure({required this.errorObject});
}

class CacheFailure extends Failure {
  final dynamic errorObject;

  CacheFailure({required this.errorObject});
}

class OtherFailure extends Failure {
  final dynamic errorObject;

  OtherFailure({required this.errorObject});
}