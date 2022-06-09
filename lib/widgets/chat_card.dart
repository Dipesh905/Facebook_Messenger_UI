import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.firstname,
    required this.lastname,
    required this.profilePic,
    required this.isOnline,
  }) : super(key: key);

  final String firstname;
  final String lastname;
  final String profilePic;
  final bool isOnline;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(profilePic),
          ),
          Positioned(
            bottom: 5,
            right: 2,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: isOnline ? Colors.green : Colors.grey,
            ),
          ),
        ],
      ),
      title: Text("$firstname  $lastname"),
      subtitle: Text("$firstname  $lastname called you"),
      trailing: const CircleAvatar(
        maxRadius: 5,
      ),
    );
  }
}
