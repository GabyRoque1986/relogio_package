import 'package:flutter/material.dart';
import 'package:battery_plus/battery_plus.dart';

class BatteryRingWidget extends StatefulWidget {
  const BatteryRingWidget({super.key});

  @override
  State<BatteryRingWidget> createState() => _BatteryRingWidgetState();
}

class _BatteryRingWidgetState extends State<BatteryRingWidget> {
  final Battery _battery = Battery();
  int _level = 0;

  @override
  void initState() {
    super.initState();
    _updateLevel();
  }

  Future<void> _updateLevel() async {
    final level = await _battery.batteryLevel;
    if (!mounted) return;
    setState(() {
      _level = level;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 120,
          height: 120,
          child: CircularProgressIndicator(
            value: _level / 100,
            strokeWidth: 12,
          ),
        ),
        Text(
          '$_level%',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
