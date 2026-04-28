import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodel/login_viewmodel.dart';
import '../../../core/widgets/app_text_form_field.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/theme/app_text_style.dart';

/// The screen where users can authenticate by providing their email and password.
/// 
/// Utilizes [GetView] to interact with the [LoginViewModel].
class LoginView extends GetView<LoginViewModel> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Welcome Back',
                style: AppTextStyle.heading1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              
              /// Email input field with validation.
              AppTextFormField(
                controller: controller.emailController,
                labelText: 'Email',
                hintText: 'Enter your email',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Please enter email';
                  if (!GetUtils.isEmail(value)) return 'Please enter valid email';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              
              /// Password input field with validation.
              AppTextFormField(
                controller: controller.passwordController,
                labelText: 'Password',
                hintText: 'Enter your password',
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Please enter password';
                  if (value.length < 6) return 'Password must be at least 6 characters';
                  return null;
                },
              ),
              const SizedBox(height: 32),
              
              /// Login submission button.
              AppButton(
                text: 'Login',
                onPressed: controller.login,
              ),
              
              // TODO: Add "Forgot Password?" and "Sign Up" links.
            ],
          ),
        ),
      ),
    );
  }
}
