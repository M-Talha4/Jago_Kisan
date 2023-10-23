import 'package:get/get.dart';
import '../../routes/routes_name.dart';

class GetStartedController extends GetxController {
  onTapNavigation() {
    Get.toNamed(Routes.login);
  }
}
