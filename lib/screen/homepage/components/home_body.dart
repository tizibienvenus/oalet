import 'package:flutter/material.dart';
import 'package:oalet/constant/constants.dart';
import 'package:oalet/generated/assets.dart';
import 'package:oalet/models/paiement_history.dart';
import 'package:oalet/models/user.dart';
import 'package:oalet/screen/homepage/components/history_card.dart';
import 'package:oalet/screen/homepage/components/service_card.dart';
import 'package:oalet/screen/homepage/components/user_card.dart';
import 'package:oalet/screen/homepage/components/visa_card.dart';


class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: kDefaultPadding * 2.5,),
              Container(
                decoration: BoxDecoration(
                    //color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(kDefaultPadding / 2)
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all( kDefaultPadding / 3),
                      child: ClipRect(
                        child: Image.asset(Assets.svgUser1),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello Tizi',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(fontWeight: FontWeight.w400, fontSize: 27,// color: Color(0xFFFFFFFF).withOpacity(0.8),
                                ),
                              ),
                              Text(
                                "Welcome Back",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontWeight: FontWeight.w300, fontSize: 27,// color: Color(0xFFFFFFFF).withOpacity(0.8),
                                ),
                              )
                            ],
                          ),
                          //const Spacer(),
                          Stack(
                            children: [
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.notifications, size: 30,),
                              ),
                              /*InkWell(
                                 onTap: (){
                                   print("Notification Butteon");
                                 },
                                 child: const Icon(
                                    Icons.notifications
                                 ),
                              ),*/
                                Positioned(
                                  top: 13,
                                    right: 14,
                                    child: Container(
                                      width: 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFA7FED9),
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                    ))
                              ],
                            ),
                          ]
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding,),
              VisaCard(),
              const SizedBox(height: 20,),
              ServiceCard(),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sent to",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 27,// color: Color(0xFFFFFFFF).withOpacity(0.8),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      print("View All Button");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "View All",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontWeight: FontWeight.w400, fontSize: 20, //color: Color(0xFFFFFFFF).withOpacity(0.8),
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios, size: 15,)
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      users.length,
                          (index) => UserCard(
                          user: users[index]
                      ),
                    ),
    ),
              ),
              const SizedBox(height: kDefaultPadding,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Activities",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 27,// color: Color(0xFFFFFFFF).withOpacity(0.8),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      print("View All Button");
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      //margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2, ),
                      //width: 65,
                      //height: 65,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(kDefaultPadding / 2)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w400, fontSize: 20, //color: Color(0xFFFFFFFF).withOpacity(0.8),
                            ),
                          ),
                          const SizedBox(width: 5,),
                          Transform.rotate(
                            angle: -1.6,
                              child: const Icon(Icons.arrow_back_ios_new_outlined, size: 15,),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding,),
              Column(
                children: List.generate(
                  historys.length,
                      (index) => HistoryCard(
                      hystory: historys[index]
                  ),
                ),
              ),
              /*ListView.builder(
                itemCount: historys.length,
                itemBuilder: (context, index) => HistoryCard(
                  hystory: historys[index],
                  /* press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MessagesScreen(),
                        ),
                      ), */

                ),
              ),*/
            ]
      ),
        ),
    ),
    );
  }

}
