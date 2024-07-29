import 'package:chat_app/Screens/login_page.dart';
import 'package:flutter/material.dart';

main() {
  runApp(chatApp());
}

class chatApp extends StatelessWidget {
  const chatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:loginPage(),
      //  Scaffold(
      //   // appBar: AppBar(
      //   //   title: const Text('QuickChat'),
      //   //   titleTextStyle:const TextStyle(fontSize: 25,fontWeight:FontWeight.w500),
      //   //     centerTitle:true ,
      //   //     backgroundColor:Color(0xffFF7F50) ,
      //   // ),
      //   body: 
      //     Center(
      //       child: Column(
      //       children: [
      //         SizedBox(height: 30),
            
      //         Image.asset('assets/chat.png',height:200,),
      //         SizedBox(height: 30),
      //         Text('Login',
      //         style: TextStyle(
      //           fontSize: 30,color: Color(0xff36454F),
      //         ),),
      //         SizedBox(height: 20,),
      //         Padding(
      //           padding: const EdgeInsets.only(right: 280.0),
      //           child: Text('Email',style: TextStyle(fontSize: 20),),
      //         ),
      //         TextField(

      //         )
      //         Padding(
      //           padding: const EdgeInsets.only(right: 280.0),
      //           child: Text('Password',style: TextStyle(fontSize: 20),),
      //         ),
            
              
            
      //       ],
            
          
      //             ),
      //     ),
      // ),
    );
  }
}
