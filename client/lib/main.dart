import 'package:flutter/material.dart';
import 'package:musique/core/theme/theme.dart';
import 'package:musique/features/auth/view/pages/login_page.dart';
import 'package:musique/features/auth/view/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Huh?',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
