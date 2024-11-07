import 'package:demo_login_logout/core/di/di.dart';
import 'package:demo_login_logout/screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Login App",
      home: LoginScreen(),
    );
  }
}