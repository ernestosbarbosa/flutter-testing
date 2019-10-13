import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'steps/nova_tarefa.dart';

Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/bdd/features/**.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './reports/report.json')
    ]
    ..stepDefinitions = [AcessarNovaTarefa(), PreencherCamposFormulario(), SalvarTarefa(), TarefaCriadaNaLista()]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/bdd/app.dart"
    ..exitAfterTestRun = true;
  return GherkinRunner().execute(config);
}