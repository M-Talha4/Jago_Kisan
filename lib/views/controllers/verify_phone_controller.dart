import 'package:get/get.dart';
import '../../utils/export.dart';
import '../../routes/routes_name.dart';

class VerifyPhoneController extends GetxController {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  TextEditingController thirdController = TextEditingController();
  TextEditingController fourthController = TextEditingController();

  onTapNavigation() {
    Get.toNamed(Routes.farmingDetails);
  }

  onBackPressed() {
    Get.offNamed(Routes.signup);
  }
}
