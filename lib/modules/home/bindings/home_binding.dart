import 'package:get/get.dart';
import '../../../core/network/http_helper.dart';
import '../../../data/repositories/post_repository_impl.dart';
import '../../../domain/repositories/post_repository.dart';
import '../viewmodel/home_viewmodel.dart';

/// Dependency injection binding for the Home module.
/// 
/// Sets up the necessary [HttpHelper], [PostRepository], and [HomeViewModel]
/// dependencies for the Home screen.
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    /// Injects [HttpHelper] to handle network requests.
    Get.lazyPut<HttpHelper>(() => HttpHelper());
    
    /// Injects the concrete implementation of [PostRepository].
    Get.lazyPut<PostRepository>(() => PostRepositoryImpl(Get.find<HttpHelper>()));
    
    /// Injects [HomeViewModel] and provides it with the [PostRepository] instance.
    Get.lazyPut<HomeViewModel>(() => HomeViewModel(Get.find<PostRepository>()));
  }
}
