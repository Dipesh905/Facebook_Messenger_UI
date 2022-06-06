import 'package:flutter/material.dart';
import 'package:messenger_chat_ui/pages/chat_home_page.dart';
import 'package:messenger_chat_ui/pages/peoples.dart';
import 'package:messenger_chat_ui/pages/stories.dart';

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

class MessengerChatUI extends StatefulWidget {
  const MessengerChatUI({Key? key}) : super(key: key);

  @override
  State<MessengerChatUI> createState() => _MessengerChatUIState();
}

class _MessengerChatUIState extends State<MessengerChatUI> {
  int _currentindex = 0;

  final tabs = [const ChatHomePage(), const PeoplesPage(), const StoriesPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentindex,
          items: const [
            BottomNavigationBarItem(
              label: "Chats",
              icon: Icon(Icons.message_sharp),
            ),
            BottomNavigationBarItem(
              label: "People",
              icon: Icon(Icons.people_rounded),
            ),
            BottomNavigationBarItem(
              label: "Stories",
              icon: Icon(Icons.amp_stories_rounded),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
        body: tabs[_currentindex]);
  }
}
