import 'package:get/get.dart';
import '../views/controllers/signup_controller.dart';
import '../utils/export.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  SignUpController controller = Get.put(SignUpController());
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
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.1, vertical: height * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              cText(
                text: "Create Account",
                color: black,
                size: width * 0.06,
                fontWeight: FontWeight.w900,
              ),
              SignUpTextFormField(
                  controller: controller.nameController,
                  hint: "Full Name",
                  hintcolor: black,
                  keyboardtype: TextInputType.text,
                  suffixIcon: Image.asset("images/name_icon.png"),
                  validation: (value) {
                    return null;
                  }),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.03),
                child: SignUpTextFormField(
                    controller: controller.emailController,
                    hint: "Email Adress",
                    hintcolor: black,
                    keyboardtype: TextInputType.emailAddress,
                    suffixIcon: Image.asset("images/email_icon.png"),
                    validation: (value) {
                      return null;
                    }),
              ),
              SignUpTextFormField(
                  controller: controller.phoneController,
                  hint: "Phone Number",
                  hintcolor: black,
                  keyboardtype: TextInputType.phone,
                  suffixIcon: Image.asset("images/phone_no_icon.png"),
                  validation: (value) {
                    return null;
                  }),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.03),
                child: SignUpTextFormField(
                    controller: controller.psdController,
                    hint: "Password",
                    hintcolor: black,
                    obscureText: controller.hideText,
                    keyboardtype: TextInputType.visiblePassword,
                    suffixIcon: Image.asset("images/password_icon.png"),
                    validation: (value) {
                      return null;
                    }),
              ),
              SignUpTextFormField(
                  controller: controller.confpsdController,
                  hint: "Conform Password",
                  hintcolor: black,
                  obscureText: controller.hideText,
                  keyboardtype: TextInputType.visiblePassword,
                  suffixIcon: Image.asset("images/conf_password_icon.png"),
                  validation: (value) {
                    return null;
                  }),
              SizedBox(
                height: height * 0.18,
              ),
              CustomButton(
                onTap: () {
                  controller.onTapNavigation();
                },
                width: width,
                bgcolor: lightgreen,
                hasShadow: true,
                text: "NEXT",
              )
            ],
          ),
        ),
      ),
    );
  }
}
