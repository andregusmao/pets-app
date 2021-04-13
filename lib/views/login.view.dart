import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pets_app/components/container.component.dart';
import 'package:pets_app/components/textbox.component.dart';
import 'package:pets_app/config/colors.dart';
import 'package:pets_app/stores/login.controller.dart';
import 'package:pets_app/views/subscribe.view.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginController = GetIt.I.get<LoginController>();

    return Scaffold(
      backgroundColor: MAIN_COLOR,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(
                image: AssetImage('lib/assets/services4pet-logo-login.png'),
              ),
            ),
            ContainerComponent(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Text(
                            'Se você já é cadastrado',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Observer(builder: (_) {
                            return TextBoxComponent(
                              label: 'seu email',
                              onChange: loginController.setEmail,
                            );
                          }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Observer(builder: (_) {
                            return TextBoxComponent(
                              label: 'sua senha',
                              isPassword: true,
                              onChange: loginController.setPassword,
                            );
                          }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: MaterialButton(
                              child: Text(
                                'ENTRE',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                              color: MAIN_COLOR,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Text(
                            'Se ainda não',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: MaterialButton(
                              child: Text(
                                'CADASTRE-SE',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                              color: MAIN_COLOR,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SubscribeView(),
                                    ));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
