
  import 'package:chat_app/constant.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message,  style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),),
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

      ),
    );
  }