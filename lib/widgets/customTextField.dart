import 'package:chat_app/constant.dart';
import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  customTextField({
    super.key,
    required this.hint,
    this.suffixIcon,
    this.onChange,
  });
  Function(String)? onChange;
  String? hint;
  Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          //error message
          return "Field is required";
        }
      },
      onChanged: onChange,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        suffixIcon: suffixIcon,
        suffixIconColor: kPrimaryColor,
        hintText: hint,
        hintStyle:
            TextStyle(fontSize: 15, color: Color.fromARGB(255, 156, 155, 155)),
        filled: true,
        fillColor: Color(0xFFD3D3D3),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(width: 2.0, color: kPrimaryColor),
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
