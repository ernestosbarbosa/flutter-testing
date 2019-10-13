import 'package:flutter_driver/flutter_driver.dart';

class NovaTarefaPage {
  final FlutterDriver _driver;
  final SerializableFinder _new_task_page = find.byValueKey('new_task_page');
  final SerializableFinder _taskname = find.byValueKey('task_name');
  final SerializableFinder _description = find.byValueKey('description');
  final SerializableFinder _save = find.byValueKey('save');

  NovaTarefaPage(this._driver);

  Future<bool> is_page() async {
    try {
      await _driver.waitFor(_new_task_page, timeout: Duration(seconds: 10));
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> preenche_tarefa_descricao(String tarefa, String descricao) async {
    await preenche_tarefa(tarefa);
    await preenche_descricao(descricao);
  }

  Future<void> preenche_tarefa(String tarefa) async {
    await _driver.tap(_taskname);
    await _driver.enterText(tarefa);
  }

  Future<void> preenche_descricao(String descricao) async {
    await _driver.tap(_description);
    await _driver.enterText(descricao);
  }

  Future<void> salvar_tarefa() async {
    await _driver.tap(_save);
  }

}
