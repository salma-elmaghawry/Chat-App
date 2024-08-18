import 'package:chat_app/constant.dart';
import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  CustomSnackBar({super.key, required String message})
      : super(
          content: Text(
            message,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          //backgroundColor: Color(0xFFD3D3D3),
          
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            
            
            borderRadius: BorderRadius.circular(10),
          
          ),

          action: SnackBarAction(
            label: 'Retry',
            onPressed: () {},
            textColor: Colors.white,
          ),
          duration: Duration(seconds: 3),
        );
}
