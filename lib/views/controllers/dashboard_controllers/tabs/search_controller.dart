import 'package:get/get.dart';
import '../../../../routes/routes_name.dart';

class SearchScreenController extends GetxController {
  List<String> expertiseField = [
    "Pesticide use in fruits and vegetables",
    "Vegetable Disease management",
    "Leafy Vegetables",
    "Pesticide use in fruits and vegetables",
    "Vegetable Disease management",
    "Leafy Vegetables",
  ];

  onTapNavigation() {
    Get.toNamed(Routes.profile);
  }

  onBackPressed() {
    // Get.offNamed(Routes.home);
  }
}
