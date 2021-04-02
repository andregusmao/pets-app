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
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(
        color: MAIN_COLOR,
        style: BorderStyle.solid,
      ),
    );
    final OutlineInputBorder _errorBorderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(
        style: BorderStyle.solid,
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
          fontWeight: FontWeight.bold,
          height: 0.6,
        ),
        hintText: this.hint,
        errorText: this.error,
        errorStyle: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        fillColor: Colors.white,
        filled: true,
        contentPadding: const EdgeInsets.all(16.0),
      ),
      obscureText: this.isPassword ?? false,
      style: TextStyle(
        fontSize: 24,
      ),
    );
  }
}
