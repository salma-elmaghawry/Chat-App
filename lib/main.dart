import 'package:chat_app/Screens/RegisterPage.dart';
import 'package:chat_app/Screens/home_page.dart';
import 'package:chat_app/Screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const chatApp());
}

class chatApp extends StatelessWidget {
  const chatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        loginPage.id: (context) => loginPage(),
        RegisterPage.id: (context) => RegisterPage(),
        'homepage': (context) => homepage(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'homepage',
      //home: homepage(),
    );
  }
}
/**
  AppBar(
          title: const Text('QuickChat'),
          titleTextStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          centerTitle: true,
          backgroundColor: Color(0xffFF7F50),
        ),
 */
