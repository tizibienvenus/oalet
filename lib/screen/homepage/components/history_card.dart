import 'package:flutter/material.dart';
import 'package:oalet/constant/constants.dart';
import 'package:oalet/models/paiement_history.dart';


class HistoryCard extends StatelessWidget {
  const HistoryCard({
    Key? key,
    required this.hystory,
  }) : super(key: key);

  final HistoryPaiement hystory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4 ),
      child: InkWell(
        onTap: (){
          print("user ${hystory.receiver} History Button");
        },
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(kDefaultPadding / 2)
          ),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all( kDefaultPadding / 3),
                child: ClipRect(
                  child: Image.asset(hystory.image),
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
                          hystory.receiver,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontWeight: FontWeight.w400, fontSize: 27,// color: Color(0xFFFFFFFF).withOpacity(0.8),
                          ),
                        ),
                        Text(
                            hystory.reasonPeament,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.w300, fontSize: 27,// color: Color(0xFFFFFFFF).withOpacity(0.8),
                            ),
                          )
                      ],
                    ),
                    //const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: kDefaultPadding / 1.5),
                      child: Text(
                        "-\$${hystory.sendedAmount.toString()}.00",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w400, fontSize: 27,// color: Color(0xFFFFFFFF).withOpacity(0.8),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
