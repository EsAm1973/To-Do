import 'package:flutter/material.dart';
import 'package:todo_app/Core/utils/styles.dart';
import 'package:todo_app/Features/auth/presentation/views/widgets/divider_with_text.dart';
import 'package:todo_app/Features/auth/presentation/views/widgets/login_form.dart';
import 'package:todo_app/Features/auth/presentation/views/widgets/login_register_prompt.dart';
import 'package:todo_app/Features/auth/presentation/views/widgets/social_login_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: Styles.textStyle32.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 32),
          const LoginForm(),
          const SizedBox(height: 32),
          const DividerWithText(text: 'or'),
          const SizedBox(height: 32),
          const SocialLoginSection(),
          const SizedBox(
            height: 40,
          ),
          const RegisterPrompt(),
        ],
      ),
    );
  }
}
