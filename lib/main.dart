import 'package:flutter/material.dart';
import 'package:profilecard/view/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alex Rivera | Creative Technologist',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(
          0xFF0F172A,
        ), // Tailored slate-900 background
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF6366F1), // Indigo accent
          secondary: Color(0xFF06B6D4), // Cyan accent
          surface: Color(0xFF1E293B), // Slate-800 surfaces
          background: Color(0xFF0F172A),
        ),
      ),
      home: const ProfilePage(),
    );
  }
}
