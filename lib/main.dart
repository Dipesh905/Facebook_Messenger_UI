import 'package:flutter/material.dart';
import 'package:messenger_chat_ui/messenger_chat_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messenger Chat UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MessengerChatUI(),
    );
  }
}
