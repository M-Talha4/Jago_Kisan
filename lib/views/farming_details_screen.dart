import 'package:get/get.dart';
import '../utils/export.dart';
import '../views/controllers/farming_details_controller.dart';

// ignore: must_be_immutable
class FarmingDetails extends StatelessWidget {
  FarmingDetails({super.key});

  FarmingDetailsController controller = Get.put(FarmingDetailsController());
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.png"), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: InkWell(
                        onTap: () {
                          controller.onBackPressed();
                        },
                        child: Image.asset("images/back_btn.png"),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: width * 0.25,
                    height: width * 0.25,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/logo.png"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: width * 0.05,
                  ),
                ),
              ],
            ),
            cText(
              text: "Farming Details",
              color: black,
              size: width * 0.055,
              fontWeight: FontWeight.w900,
            ),
            SizedBox(
              height: height * 0.65,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    width * 0.125, width * 0.08, width * 0.125, width * 0.125),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SignUpTextFormField(
                        hint: "Enter Your Crop Type",
                        keyboardtype: TextInputType.text,
                        validation: (value) {
                          return null;
                        }),
                    SignUpTextFormField(
                        hint: "Enter Your Soil Type",
                        keyboardtype: TextInputType.text,
                        validation: (value) {
                          return null;
                        }),
                    SignUpTextFormField(
                        hint: "Enter Your Climate",
                        keyboardtype: TextInputType.text,
                        validation: (value) {
                          return null;
                        }),
                    SignUpTextFormField(
                        hint: "Farm Size and Layout",
                        keyboardtype: TextInputType.text,
                        validation: (value) {
                          return null;
                        }),
                    SignUpTextFormField(
                        hint: "Pest and Disease",
                        keyboardtype: TextInputType.text,
                        validation: (value) {
                          return null;
                        }),
                    SignUpTextFormField(
                        hint: "Farming Equipment",
                        keyboardtype: TextInputType.text,
                        validation: (value) {
                          return null;
                        }),
                    SignUpTextFormField(
                        hint: "Economic Information",
                        keyboardtype: TextInputType.text,
                        validation: (value) {
                          return null;
                        }),
                    SizedBox(
                      height: height * 0.05,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: width * 0.125, vertical: 8),
              child: CustomButton(
                onTap: () {
                  controller.onTapNavigation();
                },
                width: width,
                bgcolor: lightgreen,
                hasShadow: true,
                text: "SUBMIT",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
