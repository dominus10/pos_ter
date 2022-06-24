import 'package:flutter/material.dart';
import 'package:pos_ter/routes/navRoutes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // var box = await Hive.openBox('test');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      routes: routes(),
    );
  }
}
