import 'package:flutter/material.dart';
import 'package:oalet/constants.dart';
import 'package:oalet/models/paiement_history.dart';
import 'package:oalet/screen/chart/componenets/income_history.dart';
import 'package:oalet/screen/chart/componenets/lineart_chart.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({super.key});

  @override
  State<ChartScreen> createState() => _ProductDisplayScreenState();
}

class _ProductDisplayScreenState extends State<ChartScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedValue = 0;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    textDirection: TextDirection.ltr,
                    fit: StackFit.loose,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        width: double.infinity,
                        height: 62,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        //left: 0,
                        // right: 0,
                        child: TabBar(
                          controller: tabController,
                          indicatorColor: Colors.transparent,
                          labelColor: Colors.white,
                          unselectedLabelColor: kBackgroundColor,
                          indicatorSize: TabBarIndicatorSize.label,
                          tabAlignment: TabAlignment.center,
                          onTap: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                            tabController.animateTo(value);
                          },
                          tabs: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              //width: double.infinity,
                              height: 55,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: selectedValue == 0
                                      ? kBackgroundColor
                                      : kGreyColor.withOpacity(0.8),
                                  boxShadow: selectedValue == 0
                                      ? [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                        offset: const Offset(0, 1))
                                  ]
                                      : null),
                              child: const Text(
                                "Income",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: selectedValue == 1
                                    ? kBackgroundColor
                                    : kGreyColor.withOpacity(0.8),
                                /* boxShadow: selectedValue == 1
                                        ? [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          //blurRadius: 5,
                                          //spreadRadius: 1,
                                          offset: const Offset(0, 1))
                                    ]
                                        : null */
                              ),
                              child: const Text(
                                "Expenses",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],),
                ),
                const SizedBox(height: kDefaultPadding * 1.2,),
                Text(
                  "Save This Month",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.normal,fontSize: 33, color: Color(0xFF000000).withOpacity(0.8)),
                ),
                const SizedBox(height: kDefaultPadding * 0.25,),
                Text(
                  "\$1852.00 USD",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.normal,fontSize: 33, color: Color(0xFF000000).withOpacity(0.8)),
                ),
                const SizedBox(height: 3,),
                Text(
                  "Increase of 12% from last month",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 23, color: const Color(0xFF000000).withOpacity(0.8)),
                ),
                const OaletLineChart(),
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payments History",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontWeight: FontWeight.normal,fontSize: 33, color: Color(0xFF000000).withOpacity(0.8)),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Text(
                            "View All",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.normal,fontSize: 23, color: Color(0xFF000000).withOpacity(0.8)),
                          ),
                        ),
                      ],
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: kDefaultPadding),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                    children: List.generate(
                      historys.length,
                          (index) => IncomeHistoryCard(
                          hystory: historys[index]
                      ),
                    ),
                  ),
                  ),
                ),
        ]),),
    );
  }

AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      //title: Row()
      title: Text(
        'Income History',
        style: TextStyle(
          color: Colors.black.withOpacity(0.7)
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black.withOpacity(0.7)
          ),
        ),
      ),
    );
  }

}
