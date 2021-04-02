import 'package:flutter/material.dart';
import 'package:pets_app/components/main_header_component.dart';
import 'package:pets_app/config/colors.dart';

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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
