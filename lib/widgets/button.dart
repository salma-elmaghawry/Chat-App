import 'package:flutter/material.dart';

class button extends StatelessWidget {
  button({required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xffFF7F50),
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: () {},
      child:  Text(
        title,
        style: TextStyle(
          fontSize: 19,
          color: Colors.white,
        ),
      ),
    );
  }
}
