import 'package:get/get.dart';
import '../routes/routes.dart';
import '../routes/routes_name.dart';
import 'utils/export.dart';
import 'utils/theme.dart';

Future<void> main() async {
  //  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ligntheme,
      //Navigation
      initialRoute: Routes.getStarted,
      getPages: AppRoutes.routes,
    );
  }
}
