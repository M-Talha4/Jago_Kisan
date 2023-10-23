import '../utils/export.dart';

ThemeData ligntheme = ThemeData(
    // default app bar is blue
    appBarTheme: AppBarTheme(color: primaryColor),

    //set scaffold color
    scaffoldBackgroundColor: white,

    // set icon colors
    iconTheme: const IconThemeData(color: lightblackColor),

    //set brightness
    brightness: Brightness.light,
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor, //  <-- dark color
      textTheme:
          ButtonTextTheme.normal, //  <-- this auto selects the right color
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
    )

    //
    );
