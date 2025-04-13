import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/Core/utils/app_router.dart';
import 'package:todo_app/Features/onboarding/data/models/onboarding_model.dart';
import 'package:todo_app/Features/onboarding/presentation/views/widgets/onboarding_navigation_buttons.dart';
import 'package:todo_app/Features/onboarding/presentation/views/widgets/onboarding_page.dart';

class OnboardingViewBody extends StatefulWidget {
  final VoidCallback? onFinish;

  const OnboardingViewBody({
    super.key,
    this.onFinish,
  });

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPage(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _handleNext() {
    if (_currentIndex < onboardingData.length - 1) {
      _goToPage(_currentIndex + 1);
    } else {
      if (widget.onFinish != null) {
        widget.onFinish!();
      } else {
        // Navigate to welcome screen if onFinish is not provided
        context.go(AppRouter.kWelcomeView);
      }
    }
  }

  void _handleBack() {
    if (_currentIndex > 0) {
      _goToPage(_currentIndex - 1);
    }
  }

  void _handleSkip() {
    if (widget.onFinish != null) {
      widget.onFinish!();
    } else {
      // Navigate to welcome screen if onFinish is not provided
      context.go(AppRouter.kWelcomeView);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // PageView for onboarding pages
        PageView.builder(
          controller: _pageController,
          itemCount: onboardingData.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return OnboardingPage(model: onboardingData[index]);
          },
        ),

        // Navigation buttons at the bottom
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: OnboardingNavigationButtons(
            currentIndex: _currentIndex,
            totalPages: onboardingData.length,
            onBack: _handleBack,
            onNext: _handleNext,
            onSkip: _handleSkip,
          ),
        ),
      ],
    );
  }
}