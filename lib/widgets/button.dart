import 'package:chat_app/constant.dart';
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  button({super.key, required this.title, this.onPressed});
  String title;
  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: kPrimaryColor,
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 19,
          color: Colors.white,
        ),
      ),
    );
  }
}
