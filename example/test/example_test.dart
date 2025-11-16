import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:relogio_package/relogio_package.dart';

void main() {
  testWidgets('Example app exibe o widget BatteryRingWidget', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: BatteryRingWidget(),
        ),
      ),
    );

    // Apenas verifica se o widget aparece na árvore.
    expect(find.byType(BatteryRingWidget), findsOneWidget);
  });
}
