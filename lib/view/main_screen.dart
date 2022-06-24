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
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Row(
                children: [
                  const Text("Hello Admin!"),
                  const Spacer(),
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
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 5,
                        height: MediaQuery.of(context).size.width / 4,
                        child: const Card(
                          child: Text('Reservation'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 5,
                        height: MediaQuery.of(context).size.width / 4,
                        child: const Card(
                          child: Text('Problem'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 5,
                    height: MediaQuery.of(context).size.width / 2,
                    child: const Card(
                      child: Text('Undelivered Order'),
                    ),
                  ),
                ],
              )
            ],
          ),
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
