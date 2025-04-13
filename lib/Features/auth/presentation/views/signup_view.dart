import 'package:flutter/material.dart';
import 'package:todo_app/Features/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:todo_app/constants.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        body: SignupViewBody(),
      ),
    );
  }
}
