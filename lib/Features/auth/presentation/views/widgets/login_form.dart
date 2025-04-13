import 'package:flutter/material.dart';
import 'package:todo_app/Core/utils/styles.dart';
import 'package:todo_app/Core/widgets/custom_button.dart';
import 'package:todo_app/Core/widgets/custom_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 10),
          CustomTextField(
            hintText: 'Enter your username',
            controller: _usernameController,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your username';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          Text(
            'Password',
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          CustomTextField(
            hintText: '••••••••••••',
            obscureText: _obscurePassword,
            controller: _passwordController,
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          const SizedBox(height: 32),
          CustomButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Perform login logic here
                }
              },
              text: 'Login'),
        ],
      ),
    );
  }
}
