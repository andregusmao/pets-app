import 'package:flutter/material.dart';
import 'package:pets_app/components/textbox_component.dart';
import 'package:pets_app/config/colors.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MAIN_COLOR,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(
                image: AssetImage('lib/assets/services4pet-logo.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextBoxComponent(
                label: 'seu email',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextBoxComponent(
                label: 'sua senha',
                isPassword: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: MaterialButton(
                  child: Text(
                    'Confirmar',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
