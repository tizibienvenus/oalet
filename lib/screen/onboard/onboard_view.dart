import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oalet/generated/assets.dart';

class Welcomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: Container(
          padding: const EdgeInsets.only(left: 40, right: 5),
            width: MediaQuery.of(context).size.width,
            height: 50,
              child: InkWell(
                onTap: (){
                  print("object");
                },
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFF000000),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "Get Started",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 18,
                          ),
                      ),
                      SizedBox(width: 10,),
                      Icon(
                          Icons.east,
                          color: Color(0xFFFFFFFF),
                      )
                    ],
                  ),

                ),
              ),
            ),
      backgroundColor: Colors.white,
      body: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 20,),
                  Image.asset("assets/svg/Etoile big.png"),
                  Spacer(),
                  Image.asset("assets/svg/Head.png"),
                ],
              ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Center(child: Image.asset(Assets.svgLogosansnom)),
                      Positioned(
                        //right: 0,
                          left: 0,
                          bottom: 0,
                          child: Image.asset(Assets.assetsSvgCircle)
                      )
                    ],
                  ),
                ),
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.only(left: 20),
                width: MediaQuery.of(context).size.width,
                child:  Stack(
                  children: [
                    const Text(
                      "Easy ways \nto manage \nyour \nfinances",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 65,
                        letterSpacing: 0,
                      ),
                      textAlign: TextAlign.left,

                    ),
                    Positioned(
                      right: 0,
                        bottom: 40,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 40, left: 0, bottom: 20, top: 50),
                          child: Image.asset(
                              Assets.BigEtoile,
                            width: 50,
                          ),
                        )
                    ),
                    Positioned(
                      bottom: 50,
                      child: Container(
                        height: 20,
                        color: Color(0xFF000000),

                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
    );
  }
}