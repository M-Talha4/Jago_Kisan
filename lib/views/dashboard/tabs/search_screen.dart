import 'package:get/get.dart';
import '../../../utils/export.dart';
import '../../controllers/dashboard_controllers/tabs/search_controller.dart';

// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  SearchScreenController controller = Get.put(SearchScreenController());
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.png"), fit: BoxFit.fill)),
        child: Padding(
          padding: EdgeInsets.only(top: height * 0.05),
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
                alignment: Alignment.topLeft,
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
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cText(
                      text: "Search",
                      size: width * 0.065,
                      fontWeight: FontWeight.bold,
                    ),
                    searchBar(),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    cText(
                      text: "Vegetable Crops Expert",
                      size: width * 0.055,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    SizedBox(
                      height: height * 0.36,
                      child: ListView.builder(
                        itemCount: controller.expertiseField.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: cText(
                              text: "Expert in:",
                              color: darkGreen,
                              size: width * 0.05,
                            ),
                            subtitle: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: darkGreen,
                                  size: width * 0.06,
                                ),
                                Expanded(
                                    child: cText(
                                  text: controller.expertiseField[index],
                                  size: width * 0.045,
                                )),
                              ],
                            ),
                            trailing: Container(
                              width: width * 0.2,
                              height: width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.1),
                                  image: const DecorationImage(
                                    image: AssetImage("images/profile_img.png"),
                                  )),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget searchBar() {
    return TextFormField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: const TextStyle(
              color: Colors.black26, fontWeight: FontWeight.w400),
          filled: true,
          fillColor: Colors.black12,
          prefixIcon:
              Icon(Icons.search, color: Colors.black26, size: width * 0.08),
          suffixIcon: Transform.rotate(
            angle: -36 * (3.1415926535 / 180),
            child: Icon(
              Icons.add_circle,
              color: Colors.black12,
              size: width * 0.08,
            ),
          ),

          contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
          isDense: true,
          // Border States
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black26, width: 1.2),
              borderRadius: BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black26,
                width: 1.2,
              ),
              borderRadius: BorderRadius.circular(30)),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: red,
              width: 1.2,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: red,
              width: 1.2,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        validator: (value) {
          return null;
        });
  }
}
