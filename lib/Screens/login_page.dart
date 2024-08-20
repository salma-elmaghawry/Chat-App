import 'package:chat_app/Screens/RegisterPage.dart';
import 'package:chat_app/constant.dart';
import 'package:chat_app/widgets/button.dart';
import 'package:chat_app/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  loginPage({super.key});
  static String  id = "LoginPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20), // Adjust padding as needed
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Center(
                child: Image.asset(
                  'assets/chat.png',
                  height: 200,
                ),
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 7.0, bottom: 5.0),
                child: Text('Email',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor)),
              ),
              customTextField(
                hint: 'johndoe@example.com',
                suffixIcon: Icon(Icons.email),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 7.0, bottom: 5.0),
                child: Text('Password',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor)),
              ),
              //pacer(flex: 1),
              customTextField(
                hint: '*******',
                suffixIcon: Icon(Icons.password_sharp),
              ),
              SizedBox(height: 30),
              SizedBox(
                child: button(
                  onPressed:(){},
                  title: "Log in",
                ),
                width: double.infinity,
              ),
                SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "No account? ",
                    style: TextStyle(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RegisterPage.id);
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              //Spacer(flex: 10)
            ],
          ),
        ),
      ),
    );
  }
}
