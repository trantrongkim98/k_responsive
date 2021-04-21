import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:k_responsive/k_responsive.dart';
import 'package:k_responsive/k_responsive.dart';
void main() {
  testWidgets('Verify Platform version', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(KResponsiveBuilder(
      designSize: Size(375, 708),
      child: Container(),
    ));
    expect(10.fSafe, equals(10));
    // Verify that platform version is retrieved.
  });
}
