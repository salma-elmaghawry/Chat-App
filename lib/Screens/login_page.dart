import 'package:chat_app/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(height: 80),
          Image.asset(
            'assets/chat.png',
            height: 200,
          ),
          SizedBox(height: 20),
          Text('LOGIN',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff36454F))),
                  SizedBox(height: 20),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: Text('Email',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color(0xffFF7F50)),),
                      ),
                    ],
                    
                  ),
          SizedBox(height: 10),
          customTextField(),
          SizedBox(height: 20),
          Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: Text('Password',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color(0xffFF7F50)),),
                      ),
                    ],
                    
                  ),
          SizedBox(height: 10),
          customTextField(),
          
          
          
    

        ],
      ),
    ));
  }
}
