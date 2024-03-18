import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/blocs/authentication_bloc/authentication_bloc.dart';
import '../../business_logic/blocs/authentication_bloc/authentication_state.dart';
import '../../business_logic/models/login_type.dart';
import '../utils/contants/color_contants.dart';
import '../utils/contants/number_contants.dart';
import '../utils/contants/string_contants.dart';
import '../utils/helpers/helpers.dart';
import '../utils/widgets/bottom_sheet_header_widget.dart';
import '../utils/widgets/brand_name_wiget.dart';
import '../utils/widgets/form_field_widget.dart';
import '../utils/widgets/main_button_widget.dart';
import '../utils/widgets/sign_in_another_widget.dart';

class AuthenicationScreen extends StatelessWidget {
  const AuthenicationScreen({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.authenType,
    required this.onAuthen,
    required this.onChangeAuthen,
    required this.repasswordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController repasswordController;
  final AuthenType authenType;
  final VoidCallback onAuthen;
  final VoidCallback onChangeAuthen;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.only(
          left: NumberContants.LEFT_24,
          right: NumberContants.RIGHT_24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              BottomSheetHeaderWidget(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                title: authenType == AuthenType.SignUp ? 'Sign Up' : 'Log In',
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: NumberContants.VERTICAL_24,
                ),
                child: BrandNameWidget(),
              ),
              FormFieldWidget(
                inputType: TextInputType.emailAddress,
                hint: 'VD: abc@gmail.com',
                controller: emailController,
                label: 'Email',
              ),
              const SizedBox(height: 16),
              FormFieldWidget(
                inputType: TextInputType.visiblePassword,
                hint:
                    'Password includes 8 characters, 1 uppercase letter, 1 lowercase letter, 1 number',
                controller: passwordController,
                label: 'Password',
              ),
              const SizedBox(height: 16),
              Visibility(
                visible: authenType == AuthenType.SignUp,
                child: FormFieldWidget(
                  inputType: TextInputType.visiblePassword,
                  hint: 'Re-enter the password',
                  controller: repasswordController,
                  label: 'Re-Password',
                ),
              ),
              const SizedBox(height: 16),
              BlocConsumer<AuthenticationBloc, AuthenticationState>(
                builder: (BuildContext context, AuthenticationState state) {
                  if (state is AuthenticationInProgressState) {
                    return const CircularProgressIndicator(
                      color: ColorContants.BACKGROUND_BUTTON_COLOR,
                    );
                  } else {
                    return MainButtonWidget(
                      onPressed: onAuthen,
                      title: authenType == AuthenType.SignUp
                          ? 'Get Started'
                          : 'Log In',
                    );
                  }
                },
                listener: (BuildContext context, AuthenticationState state) {
                  if (state is AuthenticationSuccessState) {
                    Navigator.pushNamed(
                      context,
                      StringContants.HOME_SCREEN_ROUTE,
                    );
                  }
                  if (state is AuthenticationFailedState) {
                    Helpers.showAppDialog(context, state.errorMessage);
                  }
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  children: <Widget>[
                    Expanded(child: Divider()),
                    Text(' or '),
                    Expanded(child: Divider()),
                  ],
                ),
              ),
              SignInAnotherWidget(
                iconPath: 'assets/images/facebook_logo.png',
                onPressed: () {},
                title: 'Continue with Facebook',
              ),
              const SizedBox(
                height: 16,
              ),
              SignInAnotherWidget(
                iconPath: 'assets/images/google_logo.png',
                onPressed: () {},
                title: 'Continue with Google',
              ),
              const SizedBox(
                height: 16,
              ),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text: authenType == AuthenType.SignUp
                          ? 'Already have an account?   '
                          : 'New to PrimeMart?   ',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: onChangeAuthen,
                        child: Text(
                          authenType == AuthenType.SignUp
                              ? 'Log In'
                              : 'Sign Up',
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 96,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
