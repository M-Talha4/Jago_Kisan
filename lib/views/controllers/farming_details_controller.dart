import 'package:get/get.dart';
import '../../utils/export.dart';
import '../../routes/routes_name.dart';

class FarmingDetailsController extends GetxController {
  TextEditingController cropTypeController = TextEditingController();
  TextEditingController soilTypeController = TextEditingController();
  TextEditingController climateController = TextEditingController();
  TextEditingController sizeController = TextEditingController();
  TextEditingController diseaseController = TextEditingController();
  TextEditingController equipmentController = TextEditingController();
  TextEditingController economyController = TextEditingController();

  onTapNavigation() {
    Get.toNamed(Routes.dashboard);
  }

  onBackPressed() {
    Get.offNamed(Routes.verifyPhone);
  }
}
