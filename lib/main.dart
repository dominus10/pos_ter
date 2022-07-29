import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pos_ter/routes/nav_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // var box = await Hive.openBox('test');
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static MaterialColor minimalBlack =
      const MaterialColor(0xFFFFFFFF, <int, Color>{
    50: Color.fromARGB(1, 0, 0, 0),
    100: Color.fromARGB(1, 0, 0, 0),
    200: Color.fromARGB(1, 0, 0, 0),
    300: Color.fromARGB(1, 0, 0, 0),
    400: Color.fromARGB(1, 0, 0, 0),
    500: Color.fromARGB(1, 0, 0, 0),
    600: Color.fromARGB(1, 0, 0, 0),
    700: Color.fromARGB(1, 0, 0, 0),
    800: Color.fromARGB(1, 0, 0, 0),
    900: Color.fromARGB(1, 0, 0, 0),
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes(),
    );
  }
}
