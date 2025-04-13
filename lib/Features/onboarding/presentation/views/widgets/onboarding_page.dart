import 'package:flutter/material.dart';
import 'package:todo_app/Core/utils/styles.dart';
import 'package:todo_app/Features/onboarding/data/models/onboarding_model.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingPage({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            model.image,
            height: 250,
          ),
          const SizedBox(height: 40),
          _buildPageIndicator(),
          const SizedBox(height: 40),
          Text(
            model.title,
            style: Styles.textStyle32.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            model.description,
            style: Styles.textStyle16.copyWith(
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator() {
    int index = onboardingData.indexOf(model);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardingData.length,
        (i) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 6,
          width: i == index ? 20 : 6,
          decoration: BoxDecoration(
            color: i == index ? Colors.white : Colors.white38,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ),
    );
  }
}
