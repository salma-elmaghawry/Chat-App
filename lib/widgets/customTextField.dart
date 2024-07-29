import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  const customTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      cursorColor: Color(0xffFF7F50),
    
      decoration: InputDecoration(
        
          filled: true,
          fillColor: Color(0xFFD3D3D3),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(width: 2.0, color: Color(0xffFF7F50))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                width: 0.0,
                color: Colors.transparent,
              )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              width: 0.0,
              color: Colors.transparent,
            ),
          )),
    );
  }
}
