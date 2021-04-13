import 'package:flutter/material.dart';
import 'package:pets_app/config/colors.dart';

class TextBoxComponent extends StatelessWidget {
  final Color color;
  final String label;
  final String hint;
  final String error;
  final bool isPassword;
  final bool isFirstCapitalized;
  final bool isAllCapitalized;
  final TextInputType inputType;
  final Function onChange;

  TextBoxComponent({
    this.color,
    this.label,
    this.hint,
    this.error,
    this.isPassword,
    this.isFirstCapitalized = false,
    this.isAllCapitalized = false,
    this.inputType,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder _normalBorderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(
        color: this.color ?? MAIN_COLOR,
        style: BorderStyle.solid,
      ),
    );
    final OutlineInputBorder _errorBorderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(
        color: Colors.red,
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
          color: this.error == null ? this.color ?? MAIN_COLOR : Colors.red,
          fontSize: 16,
          fontWeight: FontWeight.normal,
          height: 0.8,
        ),
        hintText: this.hint,
        errorText: this.error,
        errorStyle: TextStyle(
          color: Colors.red,
          fontSize: 12.0,
          height: 0.8,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        fillColor: Colors.white,
        filled: true,
        contentPadding: const EdgeInsets.all(16.0),
      ),
      obscureText: this.isPassword ?? false,
      style: TextStyle(
        fontSize: 16,
      ),
      textCapitalization: this._getCapitalization(),
      keyboardType: this.inputType,
      onChanged: this.onChange,
    );
  }

  TextCapitalization _getCapitalization() {
    if (this.isFirstCapitalized) {
      return TextCapitalization.sentences;
    }
    if (this.isAllCapitalized) {
      return TextCapitalization.words;
    }

    return TextCapitalization.none;
  }
}
