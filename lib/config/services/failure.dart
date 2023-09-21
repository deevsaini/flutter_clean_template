/// Domain Layer
/// [Failure] is a base class for all the failures that can occur in the app.
/// Failures are converted to [Failure]s and returned to the UI.
/// Domain layer should not let Failures leak to the UI.
abstract class Failure {
  final String message;
  final String? error;
  final StackTrace? stackTrace;

  Failure({
    required this.message,
    this.error,
    this.stackTrace,
  });
}

class UnKnownFailure extends Failure {
  UnKnownFailure({String? error, StackTrace? stack})
      : super(message: "Something went wrong", error: error, stackTrace: stack);
}

class FetchDataFailure extends Failure {
  FetchDataFailure({String? error, StackTrace? stack})
      : super(message: "Failed to get Data: \n");
}

class BadRequestFailure extends Failure {
  BadRequestFailure({String? error, StackTrace? stack})
      : super(message: "Invalid Request: \n");
}

class UnauthorisedFailure extends Failure {
  UnauthorisedFailure({String? error, StackTrace? stack})
      : super(message: "Unauthorised:");
}

class InvalidInputFailure extends Failure {
  InvalidInputFailure({String? error, StackTrace? stack})
      : super(message: "Invalid Input:\n");
}
