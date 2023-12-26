import 'package:flutter/material.dart';
import 'package:login_ui/pallete.dart';
import 'package:login_ui/widget/gradient_button.dart';
import 'package:login_ui/widget/login_field.dart';
import 'package:login_ui/widget/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/signin_balls.png',
              ),
              const Text(
                'Sign in.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const SocialButton(
                  lable: 'Continue with Google',
                  iconPath: 'assets/svgs/g_logo.svg'),
              const SizedBox(
                height: 20,
              ),
              const SocialButton(
                  lable: 'Continue with Facebook',
                  horizontalPadding: 90,
                  iconPath: 'assets/svgs/f_logo.svg'),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const LoginField(
                hintText: 'Email',
              ),
              const SizedBox(
                height: 15,
              ),
              const LoginField(
                hintText: 'Password',
              ),
              const SizedBox(
                height: 20,
              ),
              const GradientButton(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
