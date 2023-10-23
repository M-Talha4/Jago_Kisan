import 'package:get/get.dart';
import '../../../../routes/routes_name.dart';

class HomeController extends GetxController {
  var selectedItem = "Select State/Country".obs;
  List<String> dropDownItem = [
    "Select State/Country",
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
  ];
  List<String> expertiseField1 = [
    "Wheat",
    "Agronomy",
    "Enviornment",
    "Food Crops",
    "Growth Adviser",
    "Plant-insect interaction",
  ];
  List<String> expertiseField2 = [
    "Growth Adviser",
    "Food Crops",
    "Agronomy",
    "Plant-insect interaction",
    "Enviornment",
    "Wheat",
  ];

  onTapNavigation() {
    Get.toNamed(Routes.search);
  }

  onBackPressed() {
    // Get.offNamed(Routes.farmingDetails);
  }
}
