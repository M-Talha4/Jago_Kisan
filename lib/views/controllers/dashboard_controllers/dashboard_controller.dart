import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jago_kisan/views/dashboard/tabs/home_screen.dart';
import 'package:jago_kisan/views/dashboard/tabs/profile_screen.dart';
import 'package:jago_kisan/views/dashboard/tabs/search_screen.dart';
import '../../../../routes/routes_name.dart';

class DashboardController extends GetxController {
  var currentPageIndex = 0.obs;
  PageController pageController = PageController(initialPage: 0);
  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  onTapHome() {
    if (currentPageIndex.value != 0) {
      pageController.animateToPage(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  onTapSearch() {
    if (currentPageIndex.value != 1) {
      pageController.animateToPage(
        1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  onTapProfile() {
    if (currentPageIndex.value != 2) {
      pageController.animateToPage(
        2,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  onPageChange(index) {
    currentPageIndex.value = index;
  }

  onBackPressed() {
    Get.offNamed(Routes.farmingDetails);
  }
}
