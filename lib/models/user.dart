import 'package:oalet/generated/assets.dart';

class User {
  final String name, image;

  User({required this.name, required this.image});
}

// list of products
// for our demo
List<User> users = [
  User(
    name: "Ali",
    image: Assets.svgUser1,
  ),
  User(
    name: "Ali",
    image: Assets.svgUse3,
  ),
 User(
    name: "Michel",
    image: Assets.svgUser2,
  ),
 User(
    name: "Issac",
    image: Assets.svgUse3,
  ),
 User(
    name: "Bienvenus",
    image: Assets.svgUser4,
  ),

];
