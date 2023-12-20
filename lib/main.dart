import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_village/Screens/base_screen.dart';
import 'package:smart_village/Screens/data_screen.dart';
import 'package:smart_village/Screens/detail_news_screen.dart';
import 'package:smart_village/Screens/detail_service_screen.dart';
import 'package:smart_village/Screens/profile_screen.dart';
import 'package:smart_village/Screens/service_screen.dart';
import 'package:smart_village/firebase_options.dart';
import 'package:smart_village/repository/authentication_repository.dart';

import 'Screens/login_screen.dart';
import 'Screens/register_screen.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Smart Village",
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        BaseScreen.routeName: (context) => const BaseScreen(),
        DetailNews.routeName: (context) => const DetailNews(),
        DetailService.routeName: (context) => const DetailService(),
        '/profile': (context) => ProfileScreen(),
        '/servicescreen':(context) => ServiceScreen(),
        '/data': (context) => DataScreen()
      },
      debugShowCheckedModeBanner: false,
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
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
      ),
    );
  }
}
