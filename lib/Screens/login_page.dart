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
              Spacer(flex: 3),
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
              Spacer(flex: 2),
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
              Spacer(flex: 3),
              SizedBox(
                child: button(
                  title: "Log in",
                ),
                width: double.infinity,
              ),
              Spacer(flex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "No account ?",
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
              Spacer(flex: 10)
            ],
          ),
        ),
      ),
    );
  }
}
