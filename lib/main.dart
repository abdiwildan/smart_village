import 'package:flutter/material.dart';
import 'package:smart_village/Screens/base_screen.dart';

import 'Screens/login_screen.dart';
import 'Screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Smart Village",
      initialRoute: '/login',
      routes: {
        '/login' : (context) => const LoginScreen(),
        '/register' : (context) => const RegisterScreen(),
        '/home' :(context) => const BaseScreen()
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Poppins',
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF33CC33),
          onPrimary: Colors.white,          
          secondary: Colors.lightGreen,
          onSecondary: Colors.black,
          tertiary: Colors.greenAccent,
          error: Colors.redAccent,
          onError: Colors.black,
          background: Colors.white,
          onBackground: Colors.white54,
          surface: Colors.grey,
          onSurface: Colors.black87,
          
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500
          )
        ),
      )
      
    );
  }
}

