import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oalet/generated/assets.dart';

class Welcomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF000000),
        onPressed: () {  },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Container(
            color: Color(0xFF25FF45),

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
                        fontSize: 70,
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
                    Container(
                      height: 20,
                      color: Color(0xFF000000),

                    ),
                  ],
                ),
              )
            ],
          ),
    );
  }
}