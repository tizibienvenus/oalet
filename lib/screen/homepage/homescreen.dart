import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oalet/generated/assets.dart';
import 'package:oalet/screen/homepage/components/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: buildAppBar(),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: HomeBodyScreen(),
    );
  }
  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
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
          icon:Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
  /*BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage(Assets.svgUser1),
          ),
          label: "Profile",
        ),
      ],
    );
  }*/

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
