import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pets_app/views/home_view.dart';
import 'package:pets_app/views/launch_view.dart';
import 'package:pets_app/views/login_view.dart';
import 'package:pets_app/views/subscribe_view.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LaunchView(),
    );
  }
}
