import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/Features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  final VoidCallback? onFinish;

  const OnboardingView({
    super.key,
    this.onFinish,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SafeArea(
        child: OnboardingViewBody(onFinish: onFinish),
      ),
    );
  }
}
