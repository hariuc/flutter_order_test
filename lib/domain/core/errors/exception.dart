class ServerException implements Exception {
  final dynamic data;

  ServerException(this.data);
}

class CacheException implements Exception {}