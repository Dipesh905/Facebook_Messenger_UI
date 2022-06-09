import 'package:messenger_chat_ui/consts/app_image.dart';

class UsersModel {
  UsersModel(
      {required this.firstName,
      required this.lastName,
      required this.profilePic,
      required this.online,
      this.image});
  String firstName;
  String lastName;
  String? image;
  String profilePic;
  bool online;
}

List<UsersModel> usersDetail = [
  UsersModel(
      firstName: "Dipesh",
      lastName: "Ghimire",
      profilePic: AppImage.boysProfilePicture,
      online: true),
  UsersModel(
      firstName: "Ram",
      lastName: "Adhikari",
      profilePic: AppImage.boysProfilePicture,
      online: false),
  UsersModel(
      firstName: "Sita",
      lastName: "Giri",
      profilePic: AppImage.girlsProfilePicture,
      online: true),
  UsersModel(
      firstName: "Hari",
      lastName: "Gautam",
      profilePic: AppImage.boysProfilePicture,
      online: false),
  UsersModel(
      firstName: "Ramesh",
      lastName: "Nepal",
      profilePic: AppImage.boysProfilePicture,
      online: true),
  UsersModel(
      firstName: "Gita",
      lastName: "Gajurel",
      profilePic: AppImage.girlsProfilePicture,
      online: true),
  UsersModel(
      firstName: "Sanjay",
      lastName: "chaudari",
      profilePic: AppImage.girlsProfilePicture,
      online: true),
  UsersModel(
      firstName: "Jyoti",
      lastName: "Khanal",
      profilePic: AppImage.girlsProfilePicture,
      online: true),
];
