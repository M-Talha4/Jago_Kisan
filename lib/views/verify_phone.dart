import 'package:get/get.dart';
import '../utils/export.dart';
import '../views/controllers/verify_phone_controller.dart';

// ignore: must_be_immutable
class VerifyPhone extends StatelessWidget {
  VerifyPhone({super.key});

  VerifyPhoneController controller = Get.put(VerifyPhoneController());
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
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: height * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                text: "Verify Phone",
                color: black,
                size: width * 0.05,
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.underline,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: cText(
                  text: "Code Sent to 031531313",
                  color: black,
                  size: width * 0.04,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.125),
                child: Row(
                  children: [
                    Expanded(
                        child: codeField(
                      controller.firstController,
                    )),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Expanded(
                        child: codeField(
                      controller.secondController,
                    )),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Expanded(
                        child: codeField(
                      controller.thirdController,
                    )),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Expanded(
                        child: codeField(
                      controller.fourthController,
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cText(
                      text: "Don’t receive code?",
                      color: black.withOpacity(0.6),
                    ),
                    InkWell(
                        onTap: () {},
                        child: const cText(
                          text: "Request again",
                          color: black,
                        ))
                  ],
                ),
              ),
              InkWell(
                  onTap: () {},
                  child: const cText(
                    text: "Get via Call",
                    color: black,
                  )),
              const Expanded(child: SizedBox()),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.125, vertical: 8),
                child: CustomButton(
                  onTap: () {
                    controller.onTapNavigation();
                  },
                  text: "VERIFY",
                  borderradius: width * 0.02,
                  width: width,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget codeField(
    TextEditingController textController,
  ) {
    return TextFormField(
      controller: textController,
      cursorColor: primary,
      keyboardType: TextInputType.text,
      onChanged: (calue) {},
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: blueGrey.withOpacity(0.1),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: grey, width: 2),
            borderRadius: BorderRadius.circular(5)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: black, width: 2),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
