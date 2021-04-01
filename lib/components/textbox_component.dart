import 'package:flutter/material.dart';
import 'package:pets_app/config/colors.dart';

class TextBoxComponent extends StatelessWidget {
  final String label;
  final String hint;
  final String error;
  final bool isPassword;

  TextBoxComponent({this.label, this.hint, this.error, this.isPassword});

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder _normalBorderStyle = OutlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.none,
      ),
    );
    final OutlineInputBorder _errorBorderStyle = OutlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.none,
      ),
    );

    return TextFormField(
      decoration: InputDecoration(
        border: _normalBorderStyle,
        focusedBorder: _normalBorderStyle,
        enabledBorder: _normalBorderStyle,
        disabledBorder: _normalBorderStyle,
        errorBorder: _errorBorderStyle,
        focusedErrorBorder: _errorBorderStyle,
        labelText: this.label,
        labelStyle: TextStyle(
          color: this.error == null ? MAIN_COLOR : Colors.white,
          fontSize: 20,
          height: 2.4,
        ),
        hintText: this.hint,
        errorText: this.error,
        errorStyle: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        fillColor: Colors.white,
        filled: true,
      ),
      obscureText: this.isPassword ?? false,
      style: TextStyle(
        fontSize: 24,
      ),
    );
  }
}
