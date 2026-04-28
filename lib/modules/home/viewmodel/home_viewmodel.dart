import 'package:get/get.dart';
import '../../../domain/entities/post_entity.dart';
import '../../../domain/repositories/post_repository.dart';

/// ViewModel responsible for managing the state and logic of the Home screen.
class HomeViewModel extends GetxController {
  final PostRepository _postRepository;

  HomeViewModel(this._postRepository);

  /// A reactive counter variable.
  final count = 0.obs;
  
  /// Reactive storage for fetched [PostEntity] data.
  final postData = Rxn<PostEntity>();
  
  /// Observable boolean indicating if a data fetch is in progress.
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Fetch initial data when the controller is initialized.
    fetchData();
  }

  /// Fetches a sample post from the repository.
  /// 
  /// Updates [isLoading] and [postData] accordingly.
  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      // TODO: Make the post ID dynamic or fetch from user preferences.
      final post = await _postRepository.getPost(1);
      postData.value = post;
    } catch (e) {
      // TODO: Implement more robust error handling (e.g., showing an error state in the UI).
      Get.snackbar('Error', 'Failed to fetch data: $e');
    } finally {
      isLoading.value = false;
    }
  }

  /// Increments the [count] value by one.
  void increment() => count.value++;
}
