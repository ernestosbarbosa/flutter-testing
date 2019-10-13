import 'package:flutter_driver/flutter_driver.dart';

class ListaTarefasPage {
  final FlutterDriver _driver;
  final SerializableFinder _first_list_item = find.byValueKey('list_item');
  final SerializableFinder _add_task = find.byValueKey('add_task');

  ListaTarefasPage(this._driver);

  Future<void> tap_add_task() async {
    return await _driver.tap(_add_task);
  }

  Future<bool> exist_task_item() async {
    try {
      await _driver.waitFor(_first_list_item, timeout: Duration(seconds: 10));
      return true;
    } catch (e) {
      return false;
    }
  }
}
