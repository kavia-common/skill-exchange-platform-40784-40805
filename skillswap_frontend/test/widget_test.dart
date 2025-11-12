import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skillswap_frontend/main.dart';

void main() {
  testWidgets('Bottom navigation shows 5 destinations and Home tab', (WidgetTester tester) async {
    await tester.pumpWidget(const SkillSwapApp());
    await tester.pumpAndSettle();

    // Expect default Home title present
    expect(find.text('Home'), findsWidgets);

    // NavigationBar should exist
    expect(find.byType(NavigationBar), findsOneWidget);

    // Check presence of key labels
    expect(find.text('Matches'), findsOneWidget);
    expect(find.text('Calendar'), findsOneWidget);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
