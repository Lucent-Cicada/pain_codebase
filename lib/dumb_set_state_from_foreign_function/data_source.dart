class DataSource {
  static Future<int> dataPool() async {
    await Future.delayed(const Duration(seconds: 5));
    return 101;
  }
}