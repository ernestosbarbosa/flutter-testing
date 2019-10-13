import 'package:cwi_tasklist/components/editor.dart';
import 'package:cwi_tasklist/models/tarefa.dart';
import 'package:flutter/material.dart';

class NovaTarefa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NovaTarefaState();
  }
}

class NovaTarefaState extends State<NovaTarefa> {
  final TextEditingController _nome = TextEditingController();
  final TextEditingController _descricao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: Key("new_task_page"),
        appBar: AppBar(
          title: Text('Nova Tarefa'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Editor(
                key_name: 'task_name',
                controller: _nome,
                label: "Tarefa",
              ),
              Editor(
                key_name: 'description',
                controller: _descricao,
                label: "Descrição",
              ),
              RaisedButton(
                key: Key('save'),
                onPressed: () => _criaTarefa(context),
                child: Text('Salvar'),
              )
            ],
          ),
        ));
  }

  void _criaTarefa(BuildContext context) {
    debugPrint('clicou no confirmar');
    debugPrint(_nome.text);
    final String nome = _nome.text;
    final String descricao = _descricao.text;

    if (nome.trim().length != 0) {
      final Tarefa tarefacriada = Tarefa(nome, descricao);
      Navigator.pop(context, tarefacriada);
    }
  }
}
