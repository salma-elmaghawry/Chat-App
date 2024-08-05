import 'package:chat_app/Screens/home_page.dart';
import 'package:chat_app/Screens/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const chatApp());
}

class chatApp extends StatelessWidget {
  const chatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(75),
            child: Container(
              decoration: BoxDecoration(color: Color(0xffFF7F50),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("QuickChat",style: TextStyle(
                        fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                ),
            )),
        body: const homepage(),
      ),
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
