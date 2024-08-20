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
  String? messageException;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20), // Adjust padding as needed
          child: Form(
            key: formKey,
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
                Padding(
                  padding: EdgeInsets.only(left: 7.0, bottom: 5.0),
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
                Padding(
                  padding: EdgeInsets.only(left: 7.0, bottom: 5.0),
                  child: Text('Password',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFF7F50))),
                ),
                customTextField(
                  onChange: (data) {
                    password = data;
                  },
                  hint: '*******',
                ),
                Spacer(flex: 3),

                SizedBox(
                  child: button(
                      title: 'Register',
                      onPressed: () async {
                        try {
                          await registerUser();
                        } on FirebaseAuthException catch (e) {
                          if (e.code == "weak-password") {
                            //ScaffoldMessenger.of(context).showSnackBar

                            CustomSnackBar(
                                message:
                                    "There was an error, please try again");
                          } else if (e.code == 'email-already-in-use') {
                            //ScaffoldMessenger.of(context).showSnackBar

                            CustomSnackBar(message: "Email already exists");
                          }
                        } catch (e) {
                          CustomSnackBar(
                              message: "There was an error, please try again");
                        }
                      }),
                      
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
      ),
    );
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
