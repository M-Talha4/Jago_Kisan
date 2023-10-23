import 'package:get/get.dart';
import '../../controllers/dashboard_controllers/tabs/profile_controller.dart';
import '../../../utils/export.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  ProfileController controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.png"), fit: BoxFit.fill)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: height * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: width * 0.3,
                height: width * 0.3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/logo.png"),
                        fit: BoxFit.fill)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: InkWell(
                    onTap: () {
                      // controller.onBackPressed();
                    },
                    child: Image.asset("images/back_btn.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
