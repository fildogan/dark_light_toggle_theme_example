import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ThemeToggleSwitch extends StatelessWidget {
  const ThemeToggleSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      totalSwitches: 3,
      labels: const ['Light', 'Dark', 'System'],
      onToggle: (index) {},
    );
  }
}
