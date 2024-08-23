import 'package:chat_app/constant.dart';
import 'package:chat_app/widgets/button.dart';
import 'package:chat_app/widgets/customTextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/helper/show_snakBar.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});
  static String id = "RegisterPage";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? email;

  String? password;

  String? messageException;

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      progressIndicator: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor)),
      inAsyncCall: isLoading,
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20), // Adjust padding as needed
            child: Form(
              key: formKey,
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
                  SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(left: 7.0, bottom: 5.0),
                    child: Text('Email',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFF7F50))),
                  ),
                  customTextFormField(
                    onChange: (data) {
                      email = data;
                    },
                    hint: 'johndoe@example.com',
                    suffixIcon: Icon(Icons.email),
                  ),
                  SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 7.0, bottom: 5.0),
                    child: Text('Password',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFF7F50))),
                  ),
                  customTextFormField(
                    onChange: (data) {
                      password = data;
                    },
                    hint: '*******',
                    suffixIcon: Icon(Icons.password_sharp),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    child: button(
                        title: 'Register',
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            isLoading = true;
                            setState(() {});
                            try {
                              await registerUser();
                              showSnackBar(
                                  context, "Account Created Successfully");
                            Navigator.pop(context);//to go to login page 

                            } on FirebaseAuthException catch (e) {
                              if (e.code == "weak-password") {
                                showSnackBar(context, "Weak Password");
                              } else if (e.code == 'email-already-in-use') {
                                showSnackBar(context, "Email Alread Exists");
                              }
                            } catch (e) {
                              showSnackBar(context,
                                  "There was an error, please try again");
                            }
                            isLoading = false;
                            setState(() {});
                          } else {}
                        }),
                  ),
                  //                 width: double.infinity,
                  // ),
                  SizedBox(height: 15),
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
                  //Spacer(flex: 10)
                ],
              ),
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
