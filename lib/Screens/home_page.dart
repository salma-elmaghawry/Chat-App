import 'package:chat_app/Screens/login_page.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(75),
            child: Container(
              decoration: const BoxDecoration(color: Color(0xffFF7F50),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50))),
                child: const Padding(
                  padding:  EdgeInsets.only(top: 35),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("QuickChat",style: TextStyle(
                        fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                ),
            )),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 150),
              Image.asset(
                'assets/chat.gif',
                height: 310,
              ),
              SizedBox(height: 80),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffFF7F50),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const loginPage()),
                  );
                },
                child: const Text(
                  "Let's Chat....",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
