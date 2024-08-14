import 'package:chat_app/Screens/login_page.dart';
import 'package:chat_app/constant.dart';
import 'package:chat_app/widgets/button.dart';
import 'package:chat_app/widgets/customSnakbar.dart';
import 'package:chat_app/widgets/customTextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  static String id = "RegisterPage";
  String? email;
  String? password;

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
              const Center(
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
              const Padding(
                padding: const EdgeInsets.only(left: 7.0, bottom: 5.0),
                child: Text('Email',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFF7F50))),
              ),
              customTextField(
                onChange: (data) {
                  email = data;
                },
                hint: 'johndoe@example.com',
                suffixIcon: Icon(Icons.email),
              ),
              Spacer(flex: 2),
              const Padding(
                padding: const EdgeInsets.only(left: 7.0, bottom: 5.0),
                child: Text('Password',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFF7F50))),
              ),
              //pacer(flex: 1),
              customTextField(
                onChange: (passData) {
                  password = passData;
                },
                hint: '*******',
                suffixIcon: Icon(Icons.password_sharp),
              ),
              Spacer(flex: 3),
              // SizedBox(
              //   child:
              button(
                title: 'Register',
                onPressed: () async {
                  try {
                    var auth = FirebaseAuth.instance;
                    UserCredential user =
                        await auth.createUserWithEmailAndPassword(
                            email: email!, password: password!);
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      CustomSnackBar(
                          message: "There was an error, please try again"),
                    );
                    // TODO
                  }
                },
              ),
              //                 width: double.infinity,
              // ),
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
                      Navigator.pop(context);
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
