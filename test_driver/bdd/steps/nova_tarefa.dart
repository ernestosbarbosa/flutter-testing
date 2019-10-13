import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../pages/tarefa/criar.dart';
import '../../pages/tarefa/lista.dart';

class AcessarNovaTarefa extends StepDefinition<FlutterWorld> {

  @override
  Future<void> executeStep() async {
    ListaTarefasPage home = ListaTarefasPage(world.driver);
    await home.tap_add_task();
  }

  @override
  RegExp get pattern => RegExp(r"que acessei a tela de criação de nova tarefa");
}

class PreencherCamposFormulario extends StepDefinition<FlutterWorld> {

  @override
  Future<void> executeStep() async {
    NovaTarefaPage new_task = NovaTarefaPage(world.driver);
    await new_task.preenche_tarefa_descricao("Tarefa Exemplo", "Descrição da tarefa");
  }

  @override
  RegExp get pattern => RegExp(r"preenchi os campos do formulario");
}

class SalvarTarefa extends StepDefinition<FlutterWorld> {

  @override
  Future<void> executeStep() async {
    NovaTarefaPage new_task = NovaTarefaPage(world.driver);
    await new_task.salvar_tarefa();
  }

  @override
  RegExp get pattern => RegExp(r"salvar a tarefa");
}

class TarefaCriadaNaLista extends StepDefinition<FlutterWorld> {

  @override
  Future<void> executeStep() async {
    ListaTarefasPage home = ListaTarefasPage(world.driver);
    expect(await home.exist_task_item(), true);
  }

  @override
  RegExp get pattern => RegExp(r"a tarefa deve ser exibida da listagem");
}


