import 'package:chat_app/constant.dart';
import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  const Bubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 18),
      margin: EdgeInsets.all(16),
      height: 60,
      width: 160,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
            ),
        color:seccolor,
      ),
      child:Text("hello i am salma ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
    );
  }
}
