import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import '../pages/tarefa/criar.dart';
import '../pages/tarefa/lista.dart';

void main() {
  group('End to end tests', () {
    FlutterDriver driver;
    ListaTarefasPage home;
    NovaTarefaPage new_task;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
      home = ListaTarefasPage(driver);
      new_task = NovaTarefaPage(driver);
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Add new Task', () async {
      await home.tap_add_task();
      await new_task.preenche_tarefa_descricao("Tarefa Exemplo", "Descrição da tarefa");

      await new_task.salvar_tarefa();

      expect(await home.exist_task_item(), true);
    });
  });
}
