import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  customTextField({
    super.key,
    required this.hint,
    this.suffixIcon,
  });
  String? hint;
  Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
       cursorColor: Color(0xffFF7F50),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        suffixIcon: suffixIcon,
        suffixIconColor: Color(0xffFF7F50),
        hintText: hint,
        hintStyle: TextStyle(fontSize: 15, color: Color.fromARGB(255, 156, 155, 155)),
        filled: true,
        fillColor: Color(0xFFD3D3D3),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(width: 2.0, color: Color(0xffFF7F50)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            width: 0.0,
            color: Colors.transparent,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            width: 0.0,
            color: Colors.transparent,
          ),
        ),
      ),
    );
    
  }
}
