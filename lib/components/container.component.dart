import 'package:flutter/material.dart';
import 'package:pets_app/components/textbox.component.dart';

class ContainerComponent extends StatelessWidget {
  final Widget child;

  const ContainerComponent({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: this.child,
      ),
    );
  }
}
