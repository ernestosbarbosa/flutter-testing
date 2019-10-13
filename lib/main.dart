import 'package:flutter/material.dart';

import 'screens/tarefa/lista.dart';

void main() => runApp(ListaTarefasApp());

class ListaTarefasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber[800],
        accentColor: Colors.amber[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.amber[400],
          textTheme: ButtonTextTheme.primary
        ),
      ),
      home: ListaTarefas(),
    );
  }
}



