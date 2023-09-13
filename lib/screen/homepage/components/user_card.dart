import 'package:flutter/material.dart';
import 'package:oalet/constant/constants.dart';
import 'package:oalet/generated/assets.dart';
import 'package:oalet/models/user.dart';


class UserCard extends StatelessWidget{
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;
  //final Product product = products;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2, ),
        child:  InkWell(
          onTap: (){
          print("user ${user.name} Button");
        },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 3, vertical: kDefaultPadding / 3),
            //margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2, ),
            width: 65,
            //height: 65,
            decoration: BoxDecoration(
            color: const Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(kDefaultPadding / 1.33)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRect(
                  child: Image.asset(
                    user.image
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    user.name,
                    maxLines: 1
                  ),
                ),
              ],
              ),
          ),
        ),
    );
  }
}
