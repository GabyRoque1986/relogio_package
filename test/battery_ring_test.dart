import 'package:flutter_test/flutter_test.dart';
import 'package:relogio_package/widgets/battery_ring_widget.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Widget exibe porcentagem', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: BatteryRingWidget(),
      ),
    );

    expect(find.textContaining('%'), findsOneWidget);
  });
}
