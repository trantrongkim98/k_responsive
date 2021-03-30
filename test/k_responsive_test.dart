import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:k_responsive/k_responsive.dart';

// @dart = 2.8
void main() {
  const MethodChannel channel = MethodChannel('k_responsive');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
