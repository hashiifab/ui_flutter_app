import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


import 'onboarding_page1.dart';
import 'onboarding_page2.dart';
import 'onboarding_page3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // PageView untuk halaman-halaman Onboarding
          Expanded(
            child: PageView(
              controller: _pageController,
              children: const [
                OnboardingPage1(),
                OnboardingPage2(),
                OnboardingPage3(),
              ],
            ),
          ),
          // SmoothPageIndicator (Titik-titik)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3, // Jumlah halaman
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.blue,
                dotColor: Colors.grey,
                dotHeight: 10,
                dotWidth: 10,
                spacing: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
