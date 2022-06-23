import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final String title;
  const Login({Key? key, required this.title}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> with TickerProviderStateMixin {
  final int _tabLength = 2;
  int _selectedTab = 0;
  late TabController _tabController;
  final TextEditingController _textController =  TextEditingController();
  final TextEditingController _passwordController =  TextEditingController();

  @override
  void initState() {
    super.initState;
    _tabController = TabController(length: _tabLength, vsync: this);
    _tabController.addListener(() {
      _selectedTab = _tabController.index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DefaultTabController(
                  length: _tabLength,
                  child: TabBar(
                    controller: _tabController,
                    onTap: (tabIdx) {
                      setState(() {
                        _selectedTab = _tabController.index;
                      });
                    },
                    indicator: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: _tabController.index == 0
                                ? const Radius.circular(10)
                                : const Radius.circular(0),
                            topRight: _tabController.index == 0
                                ? const Radius.circular(0)
                                : const Radius.circular(10))),
                    unselectedLabelColor: Colors.blue,
                    labelColor: Colors.white,
                    splashBorderRadius: BorderRadius.only(
                        topLeft: _tabController.index == 0
                            ? const Radius.circular(0)
                            : const Radius.circular(10),
                        topRight: _tabController.index == 0
                            ? const Radius.circular(10)
                            : const Radius.circular(0)),
                    tabs: const [
                      Tab(
                        child: Text(
                          'User',
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Admin',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 300,
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  children: [
                    SizedBox(
                      child: Column(children: [
                        Padding(padding: const EdgeInsets.symmetric(vertical: 10),child: TextField(controller: _textController,),),
                        Padding(padding: const EdgeInsets.symmetric(vertical: 10),child: TextField(controller: _passwordController,obscureText: true,),),
                        SizedBox(width: double.infinity, height: 60,child: TextButton(onPressed: (){Navigator.of(context).pushReplacementNamed('/main');}, child: const Text('Login'),),),
                      ]),
                    ),
                    SizedBox(
                      child: Column(children: [Text(_selectedTab.toString())]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
