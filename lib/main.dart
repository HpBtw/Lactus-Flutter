import 'package:flutter/material.dart';
import 'package:sprint3flutter/navigation/app_navigation.dart';
import 'package:sprint3flutter/navigation/app_routes.dart';

void main() {
  runApp(const LactusApp());
}

class LactusApp extends StatelessWidget {
  const LactusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Lactus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.pinkAccent,
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppNavigation.generateRoute,
    );
  }
}