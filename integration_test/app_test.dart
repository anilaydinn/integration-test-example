import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:integration_test_example/main.dart' as app;

void main() {
  testWidgets("it should see increase counter when click + button",
      (tester) async {
    app.main();
    await tester.pumpAndSettle();

    expect(find.text("You have pushed the button this many times:"),
        findsOneWidget);
    expect(find.text("0"), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    expect(find.text("1"), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    expect(find.text("2"), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    expect(find.text("3"), findsOneWidget);
  });
}
