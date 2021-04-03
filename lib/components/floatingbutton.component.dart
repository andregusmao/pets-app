import 'package:flutter/material.dart';

class FloatingButtonComponent extends StatelessWidget {
  final IconData icon;
  final String tag;
  final Function onPressed;

  const FloatingButtonComponent({Key key, this.icon, this.onPressed, this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64.0,
      height: 64.0,
      child: FittedBox(
        child: FloatingActionButton(
          heroTag: this.tag,
          child: Icon(
            this.icon,
            size: 32.0,
          ),
          onPressed: this.onPressed,
        ),
      ),
    );
  }
}
