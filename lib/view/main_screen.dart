import 'package:flutter/material.dart';
import 'package:pos_ter/view/main_screen_home.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    List widgetList = [
      const MainScreenHome(),
      Container(),
      Container(),
    ];

    void btmNavTap(int index) {
      selectedIndex = index;
    }

    return Scaffold(
      body: widgetList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(onTap: btmNavTap, items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          activeIcon: Icon(
            Icons.home_filled,
            color: Colors.black,
          ),
          label: 'HOME',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box), label: 'ACCOUNT'),
      ]),
    );
  }
}
