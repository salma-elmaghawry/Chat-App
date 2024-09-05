import 'package:chat_app/constant.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class chatPage extends StatelessWidget {
  static String id = "chatPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    logoPath,
                    width: 45,
                    height: 45,
                  ),
                  const Text(
                    " QuickChat",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          
          children: [
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return BubbleChat();
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Send Message",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 165, 163, 163),
                  ),
                  suffixIcon: Icon(Icons.send),
                  suffixIconColor: kPrimaryColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(width: 2.0, color: kPrimaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(width: 2.0, color: kPrimaryColor),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
