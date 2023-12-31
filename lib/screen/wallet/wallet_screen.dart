import 'package:flutter/material.dart';
import 'package:oalet/constant/constants.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Container(
            child: Center(
                child: Text(
                  "Wallet Sceen",
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
