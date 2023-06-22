// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:semantics_playground_flutter/main.dart';

void main() {
  testWidgets('Test the Semantics tree', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    debugDumpSemanticsTree();

    expect(find.bySemanticsLabel('A single text'), findsOneWidget);
    expect(find.bySemanticsLabel('Semantics\nA regular semantics'), findsOneWidget);
    expect(find.bySemanticsLabel('Semantics'), findsOneWidget);
    expect(find.bySemanticsLabel('Semantics 1\nSemantics 2\nSemantics over Semantics'), findsOneWidget);
    expect(find.bySemanticsLabel('Merged text 1\nMerged text 2'), findsOneWidget);
  });
}
