import 'package:flutter/material.dart';
import 'package:todo_app/Core/utils/styles.dart';

class OnboardingNavigationButtons extends StatelessWidget {
  final int currentIndex;
  final int totalPages;
  final VoidCallback onBack;
  final VoidCallback onNext;
  final VoidCallback onSkip;

  const OnboardingNavigationButtons({
    super.key,
    required this.currentIndex,
    required this.totalPages,
    required this.onBack,
    required this.onNext,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Skip or Back button
          if (currentIndex == 0)
            TextButton(
              onPressed: onSkip,
              child: const Text(
                'SKIP',
                style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          else
            TextButton(
              onPressed: onBack,
              child: Text('BACK', style: Styles.textStyle16),
            ),

          // Next or Get Started button
          ElevatedButton(
            onPressed: onNext,
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  const Color(0xFF8875FF), // Purple color from design
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Text(
              currentIndex == totalPages - 1 ? 'GET STARTED' : 'NEXT',
              style: Styles.textStyle16,
            ),
          ),
        ],
      ),
    );
  }
}
