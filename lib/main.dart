import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:pets_app/stores/login.controller.dart';
import 'package:pets_app/views/home.view.dart';
import 'package:pets_app/views/launch.view.dart';
import 'package:pets_app/views/login.view.dart';
import 'package:pets_app/views/pets.view.dart';
import 'package:pets_app/views/subscribe.view.dart';

void main() {
  GetIt.instance.registerSingleton<LoginController>(LoginController());
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
