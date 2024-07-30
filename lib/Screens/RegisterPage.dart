import 'package:chat_app/Screens/login_page.dart';
import 'package:chat_app/widgets/button.dart';
import 'package:chat_app/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage
({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20), // Adjust padding as needed
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
                  'Register',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff36454F),
                  ),
                ),
              ),
              Spacer(flex: 3),
              Padding(
                padding: const EdgeInsets.only(left: 7.0, bottom: 5.0),
                child: Text('Email',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFF7F50))),
              ),
              customTextField(
                hint: 'johndoe@example.com',
                suffixIcon: Icon(Icons.email),
              ),
              Spacer(flex: 2),
              Padding(
                padding: const EdgeInsets.only(left: 7.0, bottom: 5.0),
                child: Text('Password',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFF7F50))),
              ),
              //pacer(flex: 1),
              customTextField(
                hint: '*******',
                suffixIcon: Icon(Icons.password_sharp),
              ),
              Spacer(flex: 3),
              SizedBox(
                child: button(title:'Register'),
                width: double.infinity,
              ),
              Spacer(flex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return loginPage();
                        }),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xffFF7F50),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Spacer(flex: 10)
            ],
          ),
        ),
      ),
    );
  }
}