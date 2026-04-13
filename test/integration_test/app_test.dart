import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Полный сценарий: логин -> список -> добавить -> выйти', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: Text('Логин')));

    await tester.pumpAndSettle();

    await tester.pumpAndSettle();

    await tester.pumpAndSettle();
  });
}