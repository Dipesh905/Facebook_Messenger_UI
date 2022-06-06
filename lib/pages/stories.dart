import 'package:flutter/material.dart';
import 'package:messenger_chat_ui/consts/app_image.dart';
import 'package:messenger_chat_ui/pages/display_story_pic.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
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
          "Stories",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 240,
                        color: Colors.grey,
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 240,
                              //  color: Colors.amber,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage(AppImage.boysProfilePicture),
                                ),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 240,
                              color: Colors.grey[300],
                              child: const Center(
                                child: Text(
                                  "Create Story",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                        top: 80,
                        left: 100,
                        child: CircleAvatar(
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        height: 200,
                        width: 115,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(AppImage.girlsProfilePicture),
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        //   color: Colors.amber,
                      ),
                      const Positioned(
                        top: 10,
                        left: 10,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(AppImage.boysProfilePicture),
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
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Niraj",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Neupane",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const DisplayStoryPic();
                              },
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              height: 200,
                              width: 115,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        AppImage.girlsProfilePicture),
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              //   color: Colors.amber,
                            ),
                            const Positioned(
                              top: 10,
                              left: 10,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage(AppImage.boysProfilePicture),
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
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Shyam",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Adhikari",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            height: 200,
                            width: 115,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage(AppImage.boysProfilePicture),
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            //   color: Colors.amber,
                          ),
                          const Positioned(
                            top: 10,
                            left: 10,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(AppImage.girlsProfilePicture),
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
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Dipesh",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Ghimire",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            height: 200,
                            width: 115,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage(AppImage.boysProfilePicture),
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            //   color: Colors.amber,
                          ),
                          const Positioned(
                            top: 10,
                            left: 10,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(AppImage.girlsProfilePicture),
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
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Ravi",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Nepal",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
