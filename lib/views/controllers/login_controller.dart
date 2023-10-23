import 'package:get/get.dart';
import '../../utils/export.dart';
import '../../routes/routes_name.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController psdController = TextEditingController();

  bool hideText = true;
  String selectedValue = "";
  onTapNavigation() {
    Get.toNamed(Routes.signup);
  }
}
