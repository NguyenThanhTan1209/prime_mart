import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/ui/home_screen.dart';
import 'views/ui/onboarding_screen.dart';
import 'views/ui/splash_screen.dart';
import 'views/utils/contants/color_contants.dart';
import 'views/utils/contants/number_contants.dart';
import 'views/utils/contants/string_contants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.lato(
            fontSize: NumberContants.FONT_SIZE_16,
            color: ColorContants.BLACK_COLOR,
          ),
          titleLarge: GoogleFonts.lato(
            fontSize: NumberContants.FONT_SIZE_40,
            fontWeight: FontWeight.bold,
            color: ColorContants.BLACK_COLOR,
          ),
          titleMedium: GoogleFonts.lato(
            fontSize: NumberContants.FONT_SIZE_28,
            fontWeight: FontWeight.bold,
            color: ColorContants.BLACK_COLOR,
          ),
          labelSmall: GoogleFonts.lato(
            fontSize: NumberContants.FONT_SIZE_16,
            fontWeight: FontWeight.bold,
            color: ColorContants.BLACK_COLOR,
          ),
        ),
      ),
      initialRoute: StringContants.INITIAL_ROUTE,
      routes: <String, WidgetBuilder>{
        StringContants.INITIAL_ROUTE: (BuildContext context) =>
            const OnboardingScreen(),
        StringContants.SPLASH_SCREEN_ROUTE: (BuildContext context) =>
            const SplashScreen(),
        StringContants.HOME_SCREEN_ROUTE: (BuildContext context) =>
            const HomeScreen(),
      },
    );
  }
}
