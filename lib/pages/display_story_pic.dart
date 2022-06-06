import 'package:flutter/material.dart';
import 'package:messenger_chat_ui/consts/app_image.dart';

class DisplayStoryPic extends StatefulWidget {
  const DisplayStoryPic({Key? key}) : super(key: key);

  @override
  _DisplayStoryPicState createState() => _DisplayStoryPicState();
}

class _DisplayStoryPicState extends State<DisplayStoryPic> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const SizedBox(
              height: double.infinity,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(AppImage.boysProfilePicture),
              ),
            ),
            Positioned(
              bottom: 0,
              // top: MediaQuery.of(context).size.height * 0.5,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.99,
                color: Colors.amber,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(20)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 20),
                            hintText: "Send Message"),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.emoji_emotions)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.favorite)),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const LinearProgressIndicator(
                      value: 0.5,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage(AppImage.girlsProfilePicture),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Ram Adhikari',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text('19 h',
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.cancel, color: Colors.white)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
