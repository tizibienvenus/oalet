import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oalet/constants.dart';


class VisaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              color: const Color(0xFF1D1D21),
              borderRadius: BorderRadius.circular(kDefaultPadding / 1.33)
            )
          ),
          Positioned(
            top: -18,
            right: 45,
            child: SvgPicture.asset("assets/svg/Head_card.svg")
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 1.2, horizontal: kDefaultPadding * 1.2),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kDefaultPadding / 1.33)
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/svg/visa.svg"),
                    SvgPicture.asset("assets/svg/puce.svg")
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Available Balance",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontWeight: FontWeight.w400, fontSize: 27, color: Color(0xFFFFFFFF).withOpacity(0.8)),
                        ),
                        const SizedBox(height: 3,),
                        Text(
                          "\$8520.00",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontWeight: FontWeight.bold,fontSize: 30, color: Color(0xFFFFFFFF).withOpacity(0.8)),
                        ),
                      ],
                    ),
                    Text(
                      "EX 06/26",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF).withOpacity(0.8)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}
