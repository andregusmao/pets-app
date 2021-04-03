import 'package:flutter/material.dart';
import 'package:pets_app/components/container_component.dart';
import 'package:pets_app/components/floating_button_component.dart';
import 'package:pets_app/components/main_header_component.dart';
import 'package:pets_app/components/textbox_component.dart';
import 'package:pets_app/config/colors.dart';
import 'package:pets_app/views/pets_view.dart';

class SubscribeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MAIN_COLOR,
      body: Column(
        children: [
          Center(
            child: MainHeaderComponent(
              title: 'Meu cadastro',
              backButton: () => Navigator.of(context).pop(),
            ),
          ),
          ContainerComponent(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 96.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextBoxComponent(
                        color: Colors.grey,
                        label: 'nome',
                        isFirstCapitalized: true,
                        error: 'nome é obrigatório',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextBoxComponent(
                        color: Colors.grey,
                        label: 'sobrenome',
                        isFirstCapitalized: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextBoxComponent(
                        color: Colors.grey,
                        label: 'email',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextBoxComponent(
                        color: Colors.grey,
                        label: 'senha',
                        isPassword: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextBoxComponent(
                        color: Colors.grey,
                        label: 'repita a senha',
                        isPassword: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextBoxComponent(
                        color: Colors.grey,
                        label: 'endereço',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextBoxComponent(
                        color: Colors.grey,
                        label: 'bairro',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextBoxComponent(
                        color: Colors.grey,
                        label: 'cep',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextBoxComponent(
                        color: Colors.grey,
                        label: 'cidade',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingButtonComponent(
        icon: Icons.save_alt_rounded,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PetsView()),
          );
        },
      ),
    );
  }
}
