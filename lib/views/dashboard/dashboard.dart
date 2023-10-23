import 'package:get/get.dart';
import '../../utils/export.dart';
import '../../views/controllers/dashboard_controllers/dashboard_controller.dart';

// ignore: must_be_immutable
class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  DashboardController controller = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          padding: EdgeInsets.only(bottom: height * 0.01),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: PageView(
                    controller: controller.pageController,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (int index) {
                      controller.onPageChange(index);
                    },
                    children: controller.pages),
              ),
              SizedBox(
                height: width * 0.17,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: width * 0.8,
                        height: width * 0.12,
                        decoration: BoxDecoration(
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 2),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  color: black.withOpacity(0.1))
                            ],
                            border: Border.all(color: grey, width: 1),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                controller.onTapHome();
                              },
                              child: Icon(
                                Icons.home,
                                color: darkGreen,
                                size: width * 0.12,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            InkWell(
                              onTap: () {
                                controller.onTapProfile();
                              },
                              child: Container(
                                width: width * 0.1,
                                height: width * 0.1,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "images/profile_btn.png"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: InkWell(
                        onTap: () {
                          controller.onTapSearch();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: white,
                              border: Border.all(width: 1, color: primary),
                              borderRadius: BorderRadius.circular(20)),
                          child: Icon(
                            Icons.search,
                            color: darkGreen,
                            size: width * 0.08,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
