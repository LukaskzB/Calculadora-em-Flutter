import 'package:flutter/material.dart';

class button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) callback;

  button({
    required this.text,
    this.big = false,
    this.color = DEFAULT,
    required this.callback,
  });

  button.big({
    required this.text,
    this.big = true,
    this.color = DEFAULT,
    required this.callback,
  });

  button.operation({
    required this.text,
    this.big = false,
    this.color = OPERATION,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: this.color),
        child: Text(
          this.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => callback(this.text),
      ),
    );
  }
}
