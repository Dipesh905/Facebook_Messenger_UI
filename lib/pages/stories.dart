import 'package:flutter/material.dart';
import 'package:messenger_chat_ui/consts/app_image.dart';
import 'package:messenger_chat_ui/pages/display_story_pic.dart';
import 'package:messenger_chat_ui/pages/models/users_model.dart';
import 'package:messenger_chat_ui/widgets/story_card_widget.dart';

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
        leading: const AppBarLeadingWidget(),
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
                children: const [
                  CreateStory(),
                  SizedBox(
                    width: 10,
                  ),
                  StoryCard(
                      name: "Dipesh ",
                      surname: 'Ghimire',
                      storyImage: AppImage.boysProfilePicture,
                      profileImage: AppImage.girlsProfilePicture),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: usersDetail.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 250,
                  crossAxisCount: 3,
                ),
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (
                            BuildContext context,
                          ) =>
                              DisplayStoryPic(
                                  name:
                                      "${usersDetail[index].firstName}  ${usersDetail[index].lastName}",
                                  image: usersDetail[index].profilePic),
                        ),
                      );
                    },
                    child: StoryCard(
                      name: "${usersDetail[index].firstName} ",
                      surname: " ${usersDetail[index].lastName}",
                      storyImage: " ${usersDetail[index].profilePic}",
                      profileImage: " ${usersDetail[index].profilePic}",
                    ),
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

class AppBarLeadingWidget extends StatelessWidget {
  const AppBarLeadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}

class CreateStory extends StatelessWidget {
  const CreateStory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                    image: AssetImage(AppImage.boysProfilePicture),
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
    );
  }
}
