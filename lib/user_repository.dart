import 'api_client.dart';

class UserRepository {
  final ApiClient apiClient;

  UserRepository({required this.apiClient});

  Future<String> getUserName() async {
    final response = await apiClient.fetchUserData();
    if (response['status'] == 'success') {
      return response['name'];
    }
    throw Exception('Ошибка загрузки');
  }
}