abstract class ApiClient {
  Future<Map<String, dynamic>> fetchUserData();
}

class FakeApiClient implements ApiClient {
  @override
  Future<Map<String, dynamic>> fetchUserData() async {
    await Future.delayed(const Duration(seconds: 1));
    return {'id': 1, 'name': 'Иван Тестировщик', 'status': 'success'};
  }
}