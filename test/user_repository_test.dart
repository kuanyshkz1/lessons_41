import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:lesson_41/api_client.dart';
import 'package:lesson_41/user_repository.dart';

class MockApiClient extends Mock implements ApiClient {}

void main() {
  late MockApiClient mockApiClient;
  late UserRepository repository;

  setUp(() {
    mockApiClient = MockApiClient();
    repository = UserRepository(apiClient: mockApiClient);
  });

  test('getUserName возвращает имя при успешном ответе', () async {
    when(() => mockApiClient.fetchUserData()).thenAnswer(
      (_) async => {'id': 1, 'name': 'Бэтмен', 'status': 'success'},
    );

    final name = await repository.getUserName();

    expect(name, 'Бэтмен');
    verify(() => mockApiClient.fetchUserData()).called(1);
  });
}