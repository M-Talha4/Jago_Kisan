import 'package:get/get.dart';
import '../../utils/export.dart';
import '../../routes/routes_name.dart';

class SignUpController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController psdController = TextEditingController();
  TextEditingController confpsdController = TextEditingController();

  bool hideText = true;
  onTapNavigation() {
    Get.toNamed(Routes.verifyPhone);
  }
}
