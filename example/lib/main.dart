import 'package:flutter/material.dart';
import 'package:relogio_package/relogio_package.dart';

void main() {
  runApp(const MyExampleApp());
}

class MyExampleApp extends StatelessWidget {
  const MyExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: BatteryRingWidget(),
        ),
      ),
    );
  }
}
