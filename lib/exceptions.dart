class ServerException implements Exception {
  ServerException({required this.code, required this.message});

  final int code;
  final String message;
}

class NoConnectionException implements Exception {
  NoConnectionException({
    this.message = 'Please check your connection internet!',
  });

  final String message;
}
