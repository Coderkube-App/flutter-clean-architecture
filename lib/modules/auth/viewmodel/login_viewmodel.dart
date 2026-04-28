import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/app_loader.dart';
import '../../../routes/app_pages.dart';

/// ViewModel responsible for handling login logic and UI state.
class LoginViewModel extends GetxController {
  /// Controller for the email input field.
  final emailController = TextEditingController();
  
  /// Controller for the password input field.
  final passwordController = TextEditingController();
  
  /// Global key for the login form.
  final formKey = GlobalKey<FormState>();

  // final HttpHelper _httpHelper = HttpHelper();

  /// Performs the login operation.
  /// 
  /// Validates the form, shows a loader, and navigates to the home screen on success.
  /// TODO: Replace mock delay with actual repository call.
  /// TODO: Implement remember me functionality.
  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      try {
        AppOverlayLoader.show(Get.context!);

        // Mocking login API call
        // In reality, this would be: await _httpHelper.post(ApiEndpoints.login, data: {...});
        await Future.delayed(const Duration(seconds: 2));

        AppOverlayLoader.hide(Get.context!);

        Get.offAllNamed(Routes.HOME);
      } catch (e) {
        AppOverlayLoader.hide(Get.context!);
        // TODO: Map backend error codes to user-friendly messages.
        Get.snackbar(
          'Error',
          'Login failed: $e',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }
  }

  @override
  void onClose() {
    // Dispose controllers to free up resources.
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
