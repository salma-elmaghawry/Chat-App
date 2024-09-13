import 'package:chat_app/constant.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class chatPage extends StatelessWidget {
  static String id = "chatPage";
  TextEditingController controller = TextEditingController();
  CollectionReference Messages =
      FirebaseFirestore.instance.collection(kMessageCollections);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(75),
            child: Container(
              decoration: const BoxDecoration(
                  color: seccolor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Padding(
                padding: EdgeInsets.only(top: 35, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/chatanimated.png",
                      height: 35,
                    ),
                    const Text(
                      " QuickChat",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            )),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return BubbleChat();
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: controller,
                onSubmitted: (data) {
                  Messages.add({"Message": data});
                  controller.clear();
                },
                decoration: InputDecoration(
                  hintText: "Send Message",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 165, 163, 163),
                  ),
                  suffixIcon: Icon(Icons.send),
                  suffixIconColor: kPrimaryColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(width: 2.0, color: kPrimaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(width: 2.0, color: kPrimaryColor),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
