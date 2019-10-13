import 'package:cwi_tasklist/models/tarefa.dart';
import 'package:flutter/material.dart';

import 'criar.dart';

class ListaTarefas extends StatefulWidget {
  final List<Tarefa> _listaTarefas = List();

  @override
  State<StatefulWidget> createState() {
    return ListaTarefasState();
  }
}

class ListaTarefasState extends State<ListaTarefas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        key: Key('tasklist'),
        itemCount: widget._listaTarefas.length,
        itemBuilder: (context, index) {
          final t = widget._listaTarefas[index];
          return ItemTarefa(t);
        },
      ),
      appBar: AppBar(
        title: const Text("Lista de Tarefas CWI"),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key("add_task"),
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Tarefa> future =
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NovaTarefa();
          }));
          future.then((tarefaCriada) {
            Future.delayed(Duration(seconds: 1), (){
              if (tarefaCriada != null) {
                setState(() {
                  widget._listaTarefas.add(tarefaCriada);
                });
              }
            });
          });
        },
      ),
    );
  }
}

class ItemTarefa extends StatelessWidget {
  final Tarefa _tarefa;

  ItemTarefa(this._tarefa);

  @override
  Widget build(BuildContext context) {
    return Card(
      key: Key('list_item'),
      child: ListTile(
        leading: Icon(Icons.note),
        title: Text(_tarefa.nome),
        subtitle: Text(_tarefa.descricao),
      ),
    );
  }
}