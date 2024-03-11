import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils/contants/color_contants.dart';
import '../utils/contants/number_contants.dart';
import '../utils/contants/string_contants.dart';
import '../utils/widgets/main_button_widget.dart';
import '../utils/widgets/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;

  final List<Map<String, String>> _onboardingPaths =
      StringContants.ONBOARDING_DATA;

  int _onboardingPosition = 0;

  bool get _isLastPostion => _onboardingPosition == _onboardingPaths.length - 1;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _moveToNextScreen() {
    _controller.nextPage(
      duration: const Duration(
        milliseconds: NumberContants.MILISECONDS_500,
      ),
      curve: Curves.ease,
    );
  }

  void _moveToSplashScreen() {
    Navigator.popAndPushNamed(context, StringContants.SPLASH_SCREEN_ROUTE);
  }

  void _moveToHomeScreen() {
    Navigator.popAndPushNamed(context, StringContants.HOME_SCREEN_ROUTE);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: NumberContants.VERTICAL_40),
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView.builder(
                  onPageChanged: (int value) {
                    setState(() {
                      _onboardingPosition = value;
                    });
                  },
                  controller: _controller,
                  itemBuilder: (BuildContext context, int index) {
                    return OnboardingWidget(
                      circleImagePath: _onboardingPaths[index]
                          ['circleImagePath']!,
                      illustrationImagePath: _onboardingPaths[index]
                          ['illustrationImagePath']!,
                      title: _onboardingPaths[index]['title']!,
                      subTitle: _onboardingPaths[index]['subTitle']!,
                      alignment:
                          index.isEven ? Alignment.topRight : Alignment.topLeft,
                    );
                  },
                  itemCount: _onboardingPaths.length,
                ),
              ),
              const SizedBox(
                height: NumberContants.HEIGHT_22,
              ),
              SmoothPageIndicator(
                controller: _controller, // PageController
                count: _onboardingPaths.length,
                effect: const ExpandingDotsEffect(
                  dotHeight: NumberContants.DOT_HEIGHT_6,
                  dotWidth: NumberContants.DOT_WIDTH_6,
                  activeDotColor: ColorContants.ACTIVE_DOT_COLOR,
                ),
              ),
              MainButtonWidget(
                title: _isLastPostion
                    ? StringContants.SIGN_UP_TITLE
                    : StringContants.NEXT_TITLE,
                onPressed: () {
                  if (_isLastPostion) {
                    _moveToSplashScreen();
                  } else {
                    _moveToNextScreen();
                  }
                },
              ),
              Visibility(
                visible: _isLastPostion,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: NumberContants.VERTICAL_14,
                  ),
                  child: InkWell(
                    onTap: () {
                      _moveToHomeScreen();
                    },
                    child: Text(
                      'Ask me again later',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: const Color(0xFFCBCBD4),
                            fontWeight: FontWeight.bold,
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
