import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:virtual_mirror/main.dart'; // Adjust if your main file is located elsewhere


void main() {
  testWidgets('OnboardingScreen shows correct elements and navigates to Login', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(VirtualMirrorApp());

    // Verify that the onboarding text elements are displayed correctly
    expect(find.text('Welcome to Virtual Mirror!'), findsOneWidget);
    expect(find.text('Try on clothes virtually and find the perfect fit without leaving your home.'), findsOneWidget);

    // Ensure the "Get Started" button is present
    final getStartedButton = find.widgetWithText(ElevatedButton, 'Get Started');
    expect(getStartedButton, findsOneWidget);

    // Tap the "Get Started" button and wait for the navigation to the login screen
    await tester.tap(getStartedButton);
    await tester.pumpAndSettle(); // Wait for the navigation animation to finish

    // Verify the navigation to the login screen by checking for the "Login" text
    expect(find.text('Login'), findsOneWidget); // Ensure that the Login screen is displayed
  });
}
