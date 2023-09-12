import 'package:flutter/material.dart';
import 'package:oalet/constants.dart';


class ServiceCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  print("Send Button");
                },
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(kDefaultPadding / 1.33)
                  ),
                  child: Container(
                    margin: EdgeInsets.all(kDefaultPadding / 2),
                    decoration: BoxDecoration(
                        color: const Color(0xFFEBB2FF),
                        borderRadius: BorderRadius.circular(kDefaultPadding * 2)
                    ),
                    child: Transform.rotate(
                        angle: 5.5,
                        child: Icon(Icons.send)
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                'Send',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(
                    fontWeight: FontWeight.normal,
                    color: MediaQuery.of(context).platformBrightness == Brightness.light ? kContentColorLightTheme.withOpacity(0.8) : kContentColorDarkTheme.withOpacity(0.8),
                    fontSize: 18
                ),
              ),
            ],
          ),
        Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    print("Request Button");
                  },
                  child: Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(kDefaultPadding / 1.33)
                    ),
                    child: Container(
                      margin: EdgeInsets.all(kDefaultPadding / 2),
                      decoration: BoxDecoration(
                          color: const Color(0xFFA7FED9),
                          borderRadius: BorderRadius.circular(kDefaultPadding * 2)
                      ),
                      child: Transform.rotate(
                          angle: 0,
                          child: const Icon(Icons.download_for_offline)
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  'Request',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(
                      fontWeight: FontWeight.normal,
                      color: MediaQuery.of(context).platformBrightness == Brightness.light ? kContentColorLightTheme.withOpacity(0.8) : kContentColorDarkTheme.withOpacity(0.8),
                      fontSize: 18
                  ),
                ),
              ],
            ),
        Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    print("E-wallet Button");
                  },
                  child: Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(kDefaultPadding / 1.33)
                    ),
                    child: Container(
                      margin: EdgeInsets.all(kDefaultPadding / 2),
                      decoration: BoxDecoration(
                          color: const Color(0xFFA7F4FE),
                          borderRadius: BorderRadius.circular(kDefaultPadding * 2)
                      ),
                      child: const Icon(Icons.wallet_rounded)
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  'E-wallet',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(
                      fontWeight: FontWeight.normal,
                      color: MediaQuery.of(context).platformBrightness == Brightness.light ? kContentColorLightTheme.withOpacity(0.8) : kContentColorDarkTheme.withOpacity(0.8),
                      fontSize: 18
                  ),
                ),
              ],
            ),
        Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    print("More Button");
                  },
                  child: Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(kDefaultPadding / 1.33)
                    ),
                    child: Container(
                      margin: EdgeInsets.all(kDefaultPadding / 2),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFECCA7),
                          borderRadius: BorderRadius.circular(kDefaultPadding * 2)
                      ),
                      child: const Icon(Icons.more_horiz),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  'More',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(
                      fontWeight: FontWeight.normal,
                      color: MediaQuery.of(context).platformBrightness == Brightness.light ? kContentColorLightTheme.withOpacity(0.8) : kContentColorDarkTheme.withOpacity(0.8),
                      fontSize: 18
                  ),
                ),
              ],
            ),
      ],
    );
  }

}
