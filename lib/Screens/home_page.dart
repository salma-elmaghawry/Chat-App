import 'package:chat_app/Screens/login_page.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 150),
              Image.asset(
                'assets/chat.png',
                height: 300,
              ),
              SizedBox(height: 90),
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
                  "Let's Chat....👉",
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
