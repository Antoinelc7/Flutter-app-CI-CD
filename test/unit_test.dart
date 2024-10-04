// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo/models/todo.dart';
import 'package:todo/main.dart';

void main() {
  group('Todo Model', () {
    test('Création d\'une nouvelle tâche', () {
      final todo = Todo(title: 'Test Task');
      expect(todo.title, 'Test Task');
      expect(todo.isCompleted, false);
    });
    test('Marquer une tâche comme terminée', () {
      final todo = Todo(title: 'Test Task');
      expect(todo.isCompleted, false);
      todo.toggleCompletion();
      expect(todo.isCompleted, true);
    });
  });
}