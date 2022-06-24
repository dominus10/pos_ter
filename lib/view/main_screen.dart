import 'package:flutter/material.dart';

class MainScreenUser extends StatefulWidget {
  const MainScreenUser({Key? key}) : super(key: key);

  @override
  State<MainScreenUser> createState() => _MainScreenUserState();
}

class _MainScreenUserState extends State<MainScreenUser> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text('data'),
                Spacer(),
                SizedBox(
                  width: 40.0,
                  height: 40.0,
                  child: IconButton(
                    splashRadius: 20,
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_outlined), label: 'Payment'),
        ],
      ),
    );
  }
}
