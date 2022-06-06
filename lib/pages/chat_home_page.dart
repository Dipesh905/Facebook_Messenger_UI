import 'package:flutter/material.dart';
import 'package:messenger_chat_ui/consts/app_image.dart';
import 'package:messenger_chat_ui/pages/chat_detail.dart';

class ChatHomePage extends StatefulWidget {
  const ChatHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  List shortname = [
    "Ram ",
    "Sita ",
    "Hari krishna ",
    "Madhav ",
    "Ram ",
    "Sita ",
    "Hari krishna ",
    "Madhav ",
    "Ram ",
    "Sita ",
    "Hari krishna ",
    "Madhav ",
  ];

  List peoples = [
    "Ram Adhikari",
    "Sita Thakuri",
    "Hari krishna neupane",
    "Madhav chettri",
    "Ram Adhikari",
    "Sita Thakuri",
    "Hari krishna neupane",
    "Madhav chettri",
    "Ram Adhikari",
    "Sita Thakuri",
    "Hari krishna neupane",
    "Madhav chettri",
    "Ram Adhikari",
    "Sita Thakuri",
    "Hari krishna neupane",
    "Madhav chettri",
    "Ram Adhikari",
    "Sita Thakuri",
    "Hari krishna neupane",
    "Madhav chettri",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        actions: const [
          Icon(
            Icons.camera_alt_rounded,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.edit, color: Colors.black),
          )
        ],
        leading: Stack(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(AppImage.boysProfilePicture),
            ),
            Positioned(
              top: 3,
              right: 1,
              child: Container(
                height: 20,
                width: 30,
                child: const Center(
                  child: Text(
                    "7+",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        ),
        automaticallyImplyLeading: false,
        title: const Text(
          "Chats",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200]),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    fillColor: Colors.grey,
                    hintText: "search",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 115,
              width: double.infinity,
              // color: Colors.green,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: shortname.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage(AppImage.boysProfilePicture),
                              radius: 30,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(shortname[index]),
                            const Text("Neupane"),
                          ],
                        ),
                      ),
                      const Positioned(
                        bottom: 40,
                        right: 10,
                        child: CircleAvatar(
                          maxRadius: 7,
                          backgroundColor: Colors.green,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: peoples.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ChatDetail();
                        },
                      ),
                    );
                  },
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        AppImage.girlsProfilePicture,
                      ),
                    ),
                    title: Text(peoples[index]),
                    subtitle: Text("${peoples[index]} called you"),
                    trailing: const CircleAvatar(
                      maxRadius: 5,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
