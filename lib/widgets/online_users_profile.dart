import 'package:flutter/material.dart';

class OnlineUsers extends StatelessWidget {
  const OnlineUsers({
    required this.firstname,
    required this.lastname,
    required this.profilePic,
    required this.isOnline,
    Key? key,
  }) : super(key: key);

  final String firstname;
  final String lastname;
  final String profilePic;
  final bool isOnline;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profilePic),
                radius: 30,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(firstname),
              Text(lastname),
            ],
          ),
        ),
        Positioned(
          bottom: 40,
          right: 10,
          child: CircleAvatar(
              maxRadius: 7,
              backgroundColor: isOnline ? Colors.green : Colors.grey[500]),
        ),
      ],
    );
  }
}
