import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nested/nested.dart' show SingleChildWidget;

import 'business_logic/blocs/authentication_bloc/authentication_bloc.dart';
import 'firebase_options.dart';
import 'views/ui/home_screen.dart';
import 'views/ui/onboarding_screen.dart';
import 'views/ui/splash_screen.dart';
import 'views/utils/contants/color_contants.dart';
import 'views/utils/contants/number_contants.dart';
import 'views/utils/contants/string_contants.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <SingleChildWidget>[
        BlocProvider<AuthenticationBloc>(
          create: (BuildContext context) => AuthenticationBloc(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
            bodyMedium: GoogleFonts.lato(
              fontSize: NumberContants.FONT_SIZE_16,
              color: ColorContants.BLACK_COLOR,
            ),
            bodySmall: GoogleFonts.lato(
              fontSize: NumberContants.FONT_SIZE_12,
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
            titleSmall: GoogleFonts.lato(
              fontSize: NumberContants.FONT_SIZE_20,
              color: ColorContants.BLACK_COLOR,
            ),
            labelMedium: GoogleFonts.lato(
              fontSize: NumberContants.FONT_SIZE_16,
              fontWeight: FontWeight.w800,
              color: ColorContants.BLACK_COLOR,
            ),
            labelSmall: GoogleFonts.lato(
              fontSize: NumberContants.FONT_SIZE_12,
              fontWeight: FontWeight.w800,
              color: ColorContants.BLACK_COLOR,
            ),
          ),
        ),
        initialRoute: StringContants.INITIAL_ROUTE,
        routes: <String, WidgetBuilder>{
          StringContants.INITIAL_ROUTE: (BuildContext context) =>
              const OnboardingScreen(),
          StringContants.SPLASH_SCREEN_ROUTE: (BuildContext context) =>
              SplashScreen(),
          StringContants.HOME_SCREEN_ROUTE: (BuildContext context) =>
              const HomeScreen(),
        },
      ),
    );
  }
}
