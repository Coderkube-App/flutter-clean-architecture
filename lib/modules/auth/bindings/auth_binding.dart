import 'package:get/get.dart';
import '../viewmodel/login_viewmodel.dart';

/// Dependency injection binding for the authentication module.
class AuthBinding extends Bindings {
  @override
  void dependencies() {
    /// Injects [LoginViewModel] lazily when it's first needed.
    Get.lazyPut<LoginViewModel>(() => LoginViewModel());
  }
}
