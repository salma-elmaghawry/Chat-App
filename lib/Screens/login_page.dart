import 'package:chat_app/Screens/RegisterPage.dart';
import 'package:chat_app/Screens/chat_page.dart';
import 'package:chat_app/constant.dart';
import 'package:chat_app/widgets/button.dart';
import 'package:chat_app/widgets/customTextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/helper/show_snakBar.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class loginPage extends StatefulWidget {
  loginPage({super.key});
  static String id = "LoginPage";

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String? email;
  bool isLoading = false;
  String? password;

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
            padding: const EdgeInsets.all(20), // Adjust padding as needed
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
                  const Padding(
                    padding: const EdgeInsets.only(left: 7.0, bottom: 5.0),
                    child: Text('Email',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryColor)),
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
                    padding: const EdgeInsets.only(left: 7.0, bottom: 5.0),
                    child: Text('Password',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryColor)),
                  ),
                  //pacer(flex: 1),
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
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          isLoading = true;
                          setState(() {});
                          try {
                            await loginUser();
                          Navigator.pushNamed(context, chatPage.id);
                            showSnackBar(context, "Success");
                          } on FirebaseAuthException catch (e) {
                            if (e.code == "user-not-found") {
                              showSnackBar(
                                  context, "This user is not registered");
                            } else if (e.code == "wrong-password")
                              showSnackBar(context, "Wrong password ");
                          } catch (e) {
                            showSnackBar(context,
                                "There was an error, please try again");
                          }
                          isLoading = false;
                          setState(() {});
                        }
                      },
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
                              color: kPrimaryColor,
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

  Future<void> loginUser() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
