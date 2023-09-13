import 'package:flutter/material.dart';
import 'package:oalet/screen/chart/chart_screen.dart';
import 'package:oalet/screen/homepage/components/home_body.dart';
import 'package:oalet/screen/profile/profile_screen.dart';
import 'package:oalet/screen/qr_scanner/qr_code_scanner_screen.dart';
import 'package:oalet/screen/wallet/wallet_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<HomeScreen> {
  List pages = [
    const HomeBodyScreen(),
    const WalletScreen(),
    const QrCodeScannerScreen(),
    const ChartScreen(),
    const ProfileScreen(),
  ];

  int CurrentIndex = 0;
  void onTape(int index){
    setState(() {
      CurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(),
      body: pages[CurrentIndex],
    );
  }
  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: CurrentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(() {
          CurrentIndex = value;
        });
      },
      items:  [
        const BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "home"),
        const BottomNavigationBarItem(icon: Icon(Icons.wallet_rounded), label: "wallet"),
        BottomNavigationBarItem(
          backgroundColor: const Color(0xFFF5F5F5),
            icon: Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: 60,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(15)
              ),
              padding: const EdgeInsets.all(10),
                child: const Icon(Icons.qr_code_scanner, color: Colors.black,)),
                label: "Scan Qr"
        ),
        const BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "Chart"),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          activeIcon:  Icon(Icons.person_rounded),
          label: "Profile",
        ),
      ],
    );
  }

  /*AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('Dashboard'),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {},
        ),
      ],
    );
  } */
}
