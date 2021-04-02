import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pets_app/config/colors.dart';
import 'package:pets_app/views/login_view.dart';

class LaunchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MAIN_COLOR,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginView(),
                ),
              ),
              child: Image(
                image: AssetImage('lib/assets/services4pet-logo-launch.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
