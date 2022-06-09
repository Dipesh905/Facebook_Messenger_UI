import 'package:flutter/material.dart';
import 'package:messenger_chat_ui/consts/app_image.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    Key? key,
    required this.name,
    required this.surname,
    required String storyImage,
    required String profileImage,
  }) : super(key: key);

  final String name;
  final String surname;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 115,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AppImage.girlsProfilePicture),
                ),
                borderRadius: BorderRadius.circular(10)),
          ),
          const Positioned(
            top: 10,
            left: 10,
            child: CircleAvatar(
              backgroundImage: AssetImage(AppImage.boysProfilePicture),
            ),
          ),
          const Positioned(
            top: 5,
            right: 5,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundColor: Colors.brown,
                radius: 10,
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 5,
            child: Container(
              width: 115,
              decoration: const BoxDecoration(color: Colors.black45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    surname,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
