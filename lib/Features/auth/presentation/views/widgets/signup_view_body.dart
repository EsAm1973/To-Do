import 'package:flutter/material.dart';
import 'package:todo_app/Core/utils/styles.dart';
import 'package:todo_app/Features/auth/presentation/views/widgets/divider_with_text.dart';
import 'package:todo_app/Features/auth/presentation/views/widgets/login_prompt.dart';
import 'package:todo_app/Features/auth/presentation/views/widgets/signup_form.dart';
import 'package:todo_app/Features/auth/presentation/views/widgets/social_signup_section.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 24.0, right: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register',
              style: Styles.textStyle32.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 32),
            const SignupForm(),
            const SizedBox(height: 32),
            const DividerWithText(text: 'or'),
            const SizedBox(height: 32),
            const SocialSignupSection(),
            const SizedBox(height: 40,),
            const LoginPrompt(),
            const SizedBox(height: 12,),
          ],
        ),
      ),
    );
  }
}
