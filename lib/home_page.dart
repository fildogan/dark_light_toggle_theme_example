import 'package:dark_light_toggle_theme_example/theme_toggle_switch.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dark/Light theme example'),
      ),
      body: const Center(
        child: ThemeToggleSwitch(),
      ),
    );
  }
}
