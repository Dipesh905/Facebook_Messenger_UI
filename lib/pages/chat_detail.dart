import 'package:flutter/material.dart';

class ChatDetail extends StatefulWidget {
  ChatDetail({required this.image, required this.fullName, Key? key})
      : super(key: key);

  String image;
  String fullName;

  @override
  _ChatDetailState createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Good Morning ${widget.fullName}, sanchai hunuhuncha? ",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade400,
                        Colors.blue.shade500,
                        Colors.blue.shade800,
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Good Morning babu sanchai chu ani timi? ",
                      // style: TextStyle(color: Colors.white
                      // ),
                    ),
                  ),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "ma pani sanchai chu baba ani k gardai hunuhuncha? ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade400,
                        Colors.blue.shade500,
                        Colors.blue.shade800,
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "ma paddai chu babu timi k gardai chau? ",
                      // style: TextStyle(color: Colors.white
                      // ),
                    ),
                  ),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "ma pani paddai chu baba ani k cha ghar tirako kbr? ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade400,
                        Colors.blue.shade500,
                        Colors.blue.shade800,
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Sabai thik cha babu, teta timro kbr k cha? ",
                      // style: TextStyle(color: Colors.white
                      // ),
                    ),
                  ),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Mero pani sab thik cha baba yeta pani sabai thikai cha  ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade400,
                        Colors.blue.shade500,
                        Colors.blue.shade800,
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
        elevation: 3,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info,
              color: Colors.blue,
            ),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.image),
              radius: 25,
            ),
            Column(
              children: [
                SizedBox(
                  width: 100,
                  child: Text(
                    widget.fullName,
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  "Active 5 hours ago",
                  style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        width: double.infinity,
        // color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.menu,
              color: Colors.blue,
            ),
            const Icon(Icons.camera, color: Colors.blue),
            const Icon(Icons.photo_album, color: Colors.blue),
            const Icon(Icons.mic, color: Colors.blue),
            Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            border: InputBorder.none,
                            hintText: "message"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
