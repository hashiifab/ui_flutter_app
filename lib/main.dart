import 'package:flutter/material.dart';
import 'onboarding_page1.dart';
import 'onboarding_page2.dart';
import 'onboarding_page3.dart';
import 'product_page.dart';
import 'message_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingPage1(),
        '/onboarding2': (context) => const OnboardingPage2(),
        '/onboarding3': (context) => const OnboardingPage3(),
        '/product': (context) => const ProductPage(),
        '/message': (context) => const MessagePage(),
      },
    );
  }
}
