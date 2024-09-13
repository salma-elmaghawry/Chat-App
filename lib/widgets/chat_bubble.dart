import 'package:chat_app/constant.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';

class BubbleChat extends StatelessWidget {
  const  BubbleChat({required this.Message,super.key});
final   MessageModel Message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        //,alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 18, top: 15, bottom: 15, right: 20),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),

        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color: seccolor,
        ),
        child: Text(
          Message.Message,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
