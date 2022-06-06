import 'package:flutter/material.dart';
import 'package:messenger_chat_ui/consts/app_image.dart';

class PeoplesPage extends StatefulWidget {
  const PeoplesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PeoplesPage> createState() => _PeoplesPageState();
}

class _PeoplesPageState extends State<PeoplesPage> {
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.contact_phone, color: Colors.black),
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
              right: 3,
              child: Container(
                //  margin: EdgeInsets.all(2),
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
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        title: const Text(
          "People",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: peoples.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Stack(
              children: const [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(AppImage.boysProfilePicture),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
            title: Text(
              peoples[index],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
