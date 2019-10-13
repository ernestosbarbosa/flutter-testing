// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cwi_tasklist/main.dart';

void main() {
  testWidgets('Add Task Widgets Test', (WidgetTester tester) async {
    await tester.pumpWidget(ListaTarefasApp());

    expect(await find.byKey(Key("tasklist")), findsOneWidget);
    expect(await find.byKey(Key("add_task")), findsWidgets);

    await tester.tap(find.byKey(Key("add_task")));

    expect(await find.byKey(Key("task_name")), findsOneWidget);
    await tester.enterText(find.byKey(Key("task_name")), "TaskName");

    expect(await find.byKey(Key("description")), findsOneWidget);
    await tester.enterText(find.byKey(Key("description")), "Description");

    expect(await find.byKey(Key("save")), findsOneWidget);
    await tester.tap(find.byKey(Key("save")));

    expect(await find.byKey(Key("list_item")), findsOneWidget);
  });
}
