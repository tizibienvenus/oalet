import 'package:flutter/material.dart';
import 'package:oalet/constant/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Container(
          child: Center(
            child: Text(
              "Profile Screen",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w300, fontSize: 27,// color: Color(0xFFFFFFFF).withOpacity(0.8),
              ),
            )
          ),
        )
      ),
    );
  }

}
