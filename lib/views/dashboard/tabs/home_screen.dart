import 'package:get/get.dart';
import '../../controllers/dashboard_controllers/tabs/home_controller.dart';
import '../../../utils/export.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeController controller = Get.put(HomeController());
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: width * 0.3,
              height: width * 0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/logo.png"), fit: BoxFit.fill)),
            ),
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
                  flex: 3,
                  child: Container(
                    width: width * 0.4,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(20)),
                    child: Obx(() => DropdownButtonHideUnderline(
                          child: DropdownButton(
                            dropdownColor: primary,
                            isDense: true,
                            value: controller.selectedItem.value,
                            elevation: 0,
                            onTap: () {},
                            onChanged: (value) {
                              controller.selectedItem.value = value!.toString();
                            },
                            items: controller.dropDownItem.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: cText(text: items),
                              );
                            }).toList(),
                          ),
                        )),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: width * 0.05,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.125),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: width * 0.4,
                      mainAxisExtent: width * 0.45,
                      crossAxisSpacing: width * 0.05,
                      mainAxisSpacing: width * 0.05),
                  itemCount: controller.expertiseField1.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: blueGrey.withOpacity(0.2),
                          border: Border.all(color: grey, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: width,
                            height: width * 0.22,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "images/person_in_fields.png",
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          const Expanded(child: SizedBox()),
                          const cText(
                            text: "Expert in:",
                            color: darkGreen,
                            fontWeight: FontWeight.bold,
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.03),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: black,
                                  size: width * 0.015,
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Expanded(
                                  child: cText(
                                    text: controller.expertiseField1[index],
                                    size: width * 0.032,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.03),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: black,
                                  size: width * 0.015,
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Expanded(
                                  child: cText(
                                    text: controller.expertiseField2[index],
                                    size: width * 0.032,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
