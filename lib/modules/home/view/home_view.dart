import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodel/home_viewmodel.dart';
import '../../../core/widgets/app_loader.dart';
import '../../../core/theme/app_text_style.dart';

/// The Home screen of the application.
/// 
/// Displays data fetched from a mock API and allows the user to increment a local counter.
/// It uses [GetView] to access the [HomeViewModel].
class HomeView extends GetView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Dashboard'),
        centerTitle: true,
      ),
      body: Obx(() {
        // Show a loader while data is being fetched.
        if (controller.isLoading.value) {
          return const AppLoader();
        }

        final post = controller.postData.value;
        // Show an empty state if no data is available.
        if (post == null) {
          return const Center(child: Text('No data found'));
        }

        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('API Data (Post Entity):', style: AppTextStyle.heading1),
              const SizedBox(height: 20),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title: ${post.title}',
                        style: AppTextStyle.body1.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Body: ${post.body}',
                        style: AppTextStyle.body1,
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Center(
                child: Text(
                  'Local Count: ${controller.count.value}',
                  style: AppTextStyle.body1,
                ),
              ),
            ],
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
