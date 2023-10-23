import 'package:get/get.dart';
import 'package:jago_kisan/views/controllers/getstarted_controller.dart';
import '../views/clippers/getstarted_clipper.dart';
import '../utils/export.dart';

// ignore: must_be_immutable
class GetStarted extends StatelessWidget {
  GetStarted({super.key});
  GetStartedController controller = Get.put(GetStartedController());
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cText(
              text: "Welcome to",
              color: darkGreen,
              size: width * 0.049,
              fontWeight: FontWeight.w900,
            ),
            Container(
              width: width * 0.25,
              height: width * 0.25,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/logo.png"), fit: BoxFit.fill)),
            ),
            Container(
              width: width * 0.7,
              height: height * 0.5,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/green_fields.png"),
                      fit: BoxFit.fill)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.125, vertical: height * 0.02),
              child: cText(
                text: "Without Agriculture  we can’t survive on this planet",
                color: darkGreen.withOpacity(0.9),
                size: width * 0.055,
                fontWeight: FontWeight.bold,
              ),
            ),
            ClipPath(
              clipper: GetStartedClipper(),
              child: InkWell(
                onTap: () {
                  controller.onTapNavigation();
                },
                child: Container(
                  width: width * 0.75,
                  height: height * 0.08,
                  alignment: Alignment.center,
                  color: primary,
                  child: cText(
                    text: "Get Started",
                    color: black,
                    size: width * 0.055,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
