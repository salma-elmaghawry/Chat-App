import 'package:chat_app/constant.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class chatPage extends StatelessWidget {
  static String id = "chatPage";
  final _controller = ScrollController();
  TextEditingController controller = TextEditingController();
  CollectionReference Messages =
      FirebaseFirestore.instance.collection(kMessageCollections);
  //final Stream<QuerySnapshot> Messages = FirebaseFirestore.instance.collection(kMessageCollections).snapshots();
  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
        stream: Messages.orderBy(kCreatedAt, descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<MessageModel> MessagesList = [];
            for (int i = 0; i < snapshot.data!.docs.length; i++) {
              var documentData =
                  snapshot.data!.docs[i].data() as Map<String, dynamic>;
              String message = documentData['Message'] ??
                  'No message'; // Provide default for null
              String id =
                  documentData['id'] ?? 'unknown'; // Provide default for null

              // Add message to list with the provided fallback values
              MessagesList.add(MessageModel(message, id));
            }

            return Scaffold(
                appBar: PreferredSize(
                    preferredSize: Size.fromHeight(75),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: seccolor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 45, bottom: 15),
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
                      child: ListView.builder(
                          reverse: true,
                          controller: _controller,
                          itemCount: MessagesList.length,
                          itemBuilder: (context, index) {
                            return MessagesList[index].id == email
                                ? BubbleChat(
                                    Message: MessagesList[index],
                                  )
                                : BubbleChat2(Message: MessagesList[index]);
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: TextField(
                        controller: controller,
                        onSubmitted: (data) {
                          Messages.add({
                            "Message": data,
                            kCreatedAt: DateTime.now(),
                            'id': email,
                          });
                          controller.clear();
                          _controller.animateTo(0,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn);
                        },
                        decoration: InputDecoration(
                          hintText: "Send Message",
                          hintStyle: const TextStyle(
                            color: const Color.fromARGB(255, 165, 163, 163),
                          ),
                          suffixIcon: Icon(Icons.send),
                          suffixIconColor: kPrimaryColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide:
                                BorderSide(width: 2.0, color: kPrimaryColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: kPrimaryColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide:
                                BorderSide(width: 2.0, color: kPrimaryColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ));
          } else {
            return Center(
        child: CircularProgressIndicator(), // Return loading indicator
      );
          }
        });
  }
}
