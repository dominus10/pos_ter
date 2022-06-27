import 'package:flutter/material.dart';
import 'package:pos_ter/view/main_screen_0.dart';

class MainScreenUser extends StatefulWidget {
  const MainScreenUser({Key? key}) : super(key: key);

  @override
  State<MainScreenUser> createState() => _MainScreenUserState();
}

class _MainScreenUserState extends State<MainScreenUser> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void _handleSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      MainScreen0(context: context),
      Container(
        width: MediaQuery.of(context).size.width,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
      )
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: screens.elementAt(_selectedIndex),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _handleSelectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_outlined), label: 'Payment'),
        ],
      ),
    );
  }
}
