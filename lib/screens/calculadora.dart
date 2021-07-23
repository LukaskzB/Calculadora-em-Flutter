import 'package:calculadora/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/components/display.dart';
import 'package:calculadora/components/keyboard.dart';
import 'package:flutter/services.dart';

class calculadora extends StatefulWidget {
  @override
  _calculadoraState createState() => _calculadoraState();
}

class _calculadoraState extends State<calculadora> {
  final memory memoria = memory();

  _onPressed(String command) {
    setState(() {
      memoria.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
        home: Column(
      children: <Widget>[
        display(memoria.value),
        keyboard(_onPressed),
      ],
    ));
  }
}
