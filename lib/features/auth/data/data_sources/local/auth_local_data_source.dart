abstract class AuthLocalDataSource {
  Future<void> saveToken(String taken);

  Future<String> getTaken();
}
