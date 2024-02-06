import 'package:dark_light_toggle_theme_example/config.dart';
import 'package:dark_light_toggle_theme_example/home_page.dart';
import 'package:dark_light_toggle_theme_example/preferences_service.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  currentTheme.selectedTheme = await PreferencesService().getTheme();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: currentTheme.currentTheme,
      home: const HomePage(),
    );
  }
}
