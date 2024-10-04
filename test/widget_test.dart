import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo/views/todo_list.dart';

void main() {
  testWidgets('ajouter une tâche à la liste', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: TodoListPage()));
    await tester.enterText(find.byType(TextField), "Nouvelle tâche");
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text("Nouvelle tâche"), findsOneWidget);
  });
  testWidgets('Marquer une tâche comme effectué', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: TodoListPage()));
    await tester.enterText(find.byType(TextField), "Nouvelle tâche");
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text("Nouvelle tâche"), findsOneWidget);
    Finder checkbox = find.byType(Checkbox);
    await tester.tap(checkbox);
    await tester.pump();
    Text taskText = tester.widget(find.text("Nouvelle tâche"));
    expect(taskText.style?.decoration, TextDecoration.lineThrough);
  });
}
