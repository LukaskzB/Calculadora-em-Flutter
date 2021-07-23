import 'package:calculadora/components/button.dart';
import 'package:calculadora/components/button_row.dart';
import 'package:flutter/material.dart';

class keyboard extends StatelessWidget {
  final void Function(String) callback;

  keyboard(this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      child: Column(
        children: <Widget>[
          button_row([
            button.big(text: 'AC', callback: callback, color: button.DARK),
            button(text: '%', callback: callback, color: button.DARK),
            button.operation(text: '/', callback: callback),
          ]),
          SizedBox(height: 1),
          button_row([
            button(text: '7', callback: callback),
            button(text: '8', callback: callback),
            button(text: '9', callback: callback),
            button.operation(text: '×', callback: callback),
          ]),
          SizedBox(height: 1),
          button_row([
            button(text: '4', callback: callback),
            button(text: '5', callback: callback),
            button(text: '6', callback: callback),
            button.operation(text: '-', callback: callback),
          ]),
          SizedBox(height: 1),
          button_row([
            button(text: '1', callback: callback),
            button(text: '2', callback: callback),
            button(text: '3', callback: callback),
            button.operation(text: '+', callback: callback),
          ]),
          SizedBox(height: 1),
          button_row([
            button.big(text: '0', callback: callback),
            button(text: '.', callback: callback),
            button.operation(text: '=', callback: callback),
          ]),
        ],
      ),
    );
  }
}
