import 'package:get/get.dart';
import '../views/clippers/language_clipper.dart';
import '../views/controllers/login_controller.dart';
import '../utils/export.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  LoginController controller = Get.put(LoginController());
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
          padding: EdgeInsets.symmetric(horizontal: width * 0.12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 0.25,
                height: width * 0.25,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/logo.png"),
                        fit: BoxFit.fill)),
              ),
              Container(
                width: width * 0.7,
                height: height * 0.5,
                padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/person_in_fields.png"),
                        fit: BoxFit.fill)),
                child: Column(
                  children: [
                    Image.asset(
                      "images/profile_img.png",
                      width: width * 0.28,
                    ),
                    LoginTextFormField(
                        hint: "Enter Your e-mail",
                        isDense: true,
                        keyboardtype: TextInputType.emailAddress,
                        prefixIcon: SizedBox(
                          width: width * 0.085,
                          child: Icon(
                            Icons.person,
                            color: white,
                            size: width * 0.068,
                          ),
                        ),
                        preIconMaxWidth: BoxConstraints(maxWidth: width * 0.09),
                        validation: (value) {
                          return null;
                        }),
                    LoginTextFormField(
                        hint: "Password",
                        isDense: true,
                        obscureText: controller.hideText,
                        keyboardtype: TextInputType.visiblePassword,
                        prefixIcon: SizedBox(
                          width: width * 0.085,
                          child: Icon(
                            Icons.lock_open,
                            color: white,
                            size: width * 0.068,
                          ),
                        ),
                        preIconMaxWidth: BoxConstraints(maxWidth: width * 0.09),
                        validation: (value) {
                          return null;
                        }),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: const cText(
                          text: "Forgot Password?",
                          color: white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.03),
                      child: const cText(
                        text: "or Sign In using",
                        color: white,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Image.asset("images/fb_logo.png")),
                          InkWell(
                            onTap: () {},
                            child: Image.asset("images/google_logo.png"),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset("images/twitter_logo.png"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomButton(
                  onTap: () {
                    controller.onTapNavigation();
                  },
                  text: "LOGIN"),
              SizedBox(
                height: height * 0.12,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {},
                  child: ClipPath(
                    clipper: LanguageClipper(),
                    child: Container(
                      height: width * 0.1,
                      width: width * 0.25,
                      decoration: const BoxDecoration(color: lightgreen),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.035),
                            child: Transform.rotate(
                                angle: -14 * (3.1415926535 / 180),
                                child: cText(
                                  text: "Lang",
                                  size: width * 0.048,
                                )),
                          ),
                          const Expanded(child: SizedBox()),
                          Transform.rotate(
                              angle: -18 * (3.1415926535 / 180),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: width * 0.012, bottom: width * 0.07),
                                child: Icon(
                                  Icons.keyboard_arrow_up,
                                  color: black,
                                  size: width * 0.075,
                                ),
                              )),
                        ],
                      ),
                    ),
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
