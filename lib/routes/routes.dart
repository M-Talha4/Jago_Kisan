import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:jago_kisan/views/dashboard/dashboard.dart';
import '../views/farming_details_screen.dart';
import '../views/getstarted.dart';
import '../views/login_screen.dart';
import '../views/dashboard/tabs/search_screen.dart';
import '../views/signup_screen.dart';
import '../views/verify_phone.dart';
import '../routes/routes_name.dart';
import '../views/dashboard/tabs/home_screen.dart';
import '../views/dashboard/tabs/profile_screen.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
      name: Routes.getStarted,
      page: () => GetStarted(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.signup,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: Routes.verifyPhone,
      page: () => VerifyPhone(),
    ),
    GetPage(
      name: Routes.farmingDetails,
      page: () => FarmingDetails(),
    ),
    GetPage(
      name: Routes.dashboard,
      page: () => DashboardScreen(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: Routes.search,
      page: () => SearchScreen(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => ProfileScreen(),
    ),
  ];
}
