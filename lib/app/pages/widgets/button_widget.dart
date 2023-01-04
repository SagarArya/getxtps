import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class RaisedButtonCustomWidget extends StatelessWidget {
  final IconData icon;
  final String? text;
  final Function? onPressed;
  final Color borderColor;
  RaisedButtonCustomWidget(
      {required this.icon,
      this.text,
      this.onPressed,
      this.borderColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this.onPressed as void Function()?,
      child: Icon(
        this.icon,
        color: Colors.white,
      ),
    );
  }
}
