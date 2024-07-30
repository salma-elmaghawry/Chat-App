import 'package:chat_app/widgets/button.dart';
import 'package:chat_app/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0), // Adjust padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(flex: 5),
              Center(
                child: Image.asset(
                  'assets/chat.png',
                  height: 200,
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff36454F),
                  ),
                ),
              ),
              Spacer(flex: 2),
              Padding(
                padding: const EdgeInsets.only(left: 7.0, bottom: 5.0),
                child: Text('Email', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xffFF7F50))),
              ),
              customTextField(
                hint: 'johndoe@example.com',
                suffixIcon: Icon(Icons.email),
              ),
              Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.only(left: 7.0, bottom: 5.0),
                child: Text('Password', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xffFF7F50))),
              ),
              //pacer(flex: 1),
              customTextField(
                hint: '*******',
                suffixIcon: Icon(Icons.password_sharp),
              ),
              Spacer(flex: 2),
              SizedBox(
                child: button(),
                width: double.infinity, 
              ),
              Spacer(flex: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("No account ?",
                  style: TextStyle(
                    
                  ),
                  ),
                    Text("Sign up",
                  style: TextStyle(
                    color: Color(0xffFF7F50),fontWeight: FontWeight.bold
                  ),
                  )
                ],
              ),
              Spacer(flex:10)
            ],
          ),
        ),
      ),
    );
  }
}
