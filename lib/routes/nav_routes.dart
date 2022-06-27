import 'package:flutter/material.dart';
import 'package:pos_ter/view/login.dart';
import 'package:pos_ter/view/main_screen.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => const Login(
          title: '',
        ),
    '/main': (context) => const MainScreenUser(),
  };
}
