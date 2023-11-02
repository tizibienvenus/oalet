import 'package:flutter/material.dart';
import 'package:oalet/constants.dart';
import 'package:oalet/models/paiement_history.dart';


class IncomeHistoryCard extends StatelessWidget {
  const IncomeHistoryCard({
    Key? key,
    required this.hystory,
  }) : super(key: key);

  final HistoryPaiement hystory;

  @override
  Widget build(BuildContext context) {
    //return //Padding(
      //padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5 ),
    return InkWell(
        onTap: (){
          print("user ${hystory.reasonIncome} History Button");
        },
        child: Container(
          width: 170,
          height: 160,
          margin: const EdgeInsets.only(left: kDefaultPadding / 1, right: kDefaultPadding / 2.5, bottom: kDefaultPadding),
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
              color: hystory.color,
              borderRadius: BorderRadius.circular(kDefaultPadding / 2)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
               padding: const EdgeInsets.all(8.0),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(kDefaultPadding * 0.6)
               ),
               child: hystory.icon
              ),
              const SizedBox(height: 5,),
              Text(
                hystory.reasonIncome,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.normal, fontSize: 20, color: Color(0xFF000000).withOpacity(0.7)),
              ),
              const SizedBox(height: 5,),
              Text(
                hystory.date,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.normal, fontSize: 20, color: Color(0xFF000000).withOpacity(0.7)),
              ),
              const SizedBox(height: 5,),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                     "\$${hystory.sendedAmount.toString()}.00",
                     style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 20,// color: Color(0xFFFFFFFF).withOpacity(0.8),
                       ),
                     ),
                    Transform.rotate(
                      angle: 2.5,
                        child: const Icon(Icons.keyboard_backspace),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
   // );
  }

}
