import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/blocs/authentication_bloc/authentication_bloc.dart';
import '../../business_logic/blocs/authentication_bloc/authentication_event.dart';
import '../../business_logic/models/login_type.dart';
import '../utils/contants/color_contants.dart';
import '../utils/contants/number_contants.dart';
import '../utils/helpers/helpers.dart';
import '../utils/widgets/brand_name_wiget.dart';
import '../utils/widgets/main_button_widget.dart';
import 'authentication_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repasswordController = TextEditingController();

  void _showSignUpScreen(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: ColorContants.WHITE_COLOR,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      useSafeArea: true,
      builder: (BuildContext context) {
        return AuthenicationScreen(
          emailController: _emailController,
          passwordController: _passwordController,
          repasswordController: _repasswordController,
          authenType: AuthenType.SignUp,
          onAuthen: () {
            if (Helpers.signUpCheckValidate(
              _emailController.text,
              _passwordController.text,
              _repasswordController.text,
            )) {
              context.read<AuthenticationBloc>().add(
                    SignUpEvent(
                      email: _emailController.text,
                      password: _passwordController.text,
                    ),
                  );
            } else {
              Helpers.showAppDialog(context, 'Vui lòng nhập thông tin hợp lệ');
            }
          },
          onChangeAuthen: () {
            Navigator.of(context).pop();
            _showLogInScreen(context);
          },
        );
      },
    );
  }

  void _showLogInScreen(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: ColorContants.WHITE_COLOR,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      useSafeArea: true,
      builder: (BuildContext context) {
        return AuthenicationScreen(
          emailController: _emailController,
          passwordController: _passwordController,
          repasswordController: _repasswordController,
          authenType: AuthenType.Login,
          onAuthen: () {
            if (Helpers.signInCheckValidate(
              _emailController.text,
              _passwordController.text,
            )) {
              context.read<AuthenticationBloc>().add(
                    LogInEvent(
                      email: _emailController.text,
                      password: _passwordController.text,
                    ),
                  );
            } else {
              Helpers.showAppDialog(
                context,
                'Your email or password invalid. Please try again!',
              );
            }
          },
          onChangeAuthen: () {
            Navigator.of(context).pop();
            _showSignUpScreen(context);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/splash_circle_background.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: NumberContants.HORIZONTAL_24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset('assets/images/splash_screen_illustration.png'),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 41),
                      child: BrandNameWidget(),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Whatever you love, we have it.',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 76, bottom: 24),
                      child: MainButtonWidget(
                        onPressed: () {
                          _showSignUpScreen(context);
                        },
                        title: 'Sign up',
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: <InlineSpan>[
                          const TextSpan(text: 'Already have an account?  '),
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () {
                                _showLogInScreen(context);
                              },
                              child: Text(
                                'Log in',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 52,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
