// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

<<<<<<< HEAD
/*NetworkImage(
                        "https://4.bp.blogspot.com/-Jx21kNqFSTU/UXemtqPhZCI/AAAAAAAAh74/BMGSzpU6F48/s1600/funny-cat-pictures-047-001.jpg"),*/

/*flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(1), bottomRight: Radius.circular(1)),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/appbar.jpg'), fit: BoxFit.fill),
            ),
          ),
        ),*/
        /* void dispose() {
    controller.dispose();
    super.dispose();
  }*/
=======
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:e_mechanics/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
>>>>>>> 4b7e1399790bacd48c98696cbd43060ece5f7a1d
