import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_shopper/gen_widget/app_button.dart';
import 'package:flutter_shopper/gen_widget/input_decoration.dart';
import 'package:flutter_shopper/pages/login/bloc/login_bloc.dart';
import 'package:flutter_shopper/pages/login/widgets/social_media.dart';
import 'package:flutter_shopper/pages/tabs_config/route/router.gr.dart';

import 'package:flutter_shopper/utils/colors.dart';
import 'package:flutter_shopper/utils/loader.dart';
import 'package:flutter_shopper/utils/others.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart' hide AppButton;
import 'package:phosphor_flutter/phosphor_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: kAppColor,

        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.light,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.light,
      ),
      child: BlocProvider(
        create: (context) {
          return LoginFormBloc();
        },
        child: Builder(builder: (context) {
          final signupFormBloc = context.read<LoginFormBloc>();
          return SafeArea(
              child: Scaffold(
            backgroundColor: kAppColor,
            body: FormBlocListener<LoginFormBloc, String, String>(
              onSubmitting: (context, state) {
                showLoader(context);
              },
              onSubmissionFailed: (context, state) {
                showSnackberFail(
                    context: context,
                    message: 'Please make sure all the fields are filled');
                hideLoader();
              },
              onSuccess: (context, state) async {
                //await setValue(kHasAccount, true);
                hideLoader();
                snackBar(context,
                    title: 'Account Created Successful',
                    backgroundColor: Colors.green);
                //  context.navigateTo(DashboardRoute(children: [ExploreRouter()]));
                // ref.refresh(feedNotifierProvider);
                //  context.replaceRoute(TabRoute());
              },
              onFailure: (context, state) {
                //   print('failure ${state.failureResponse!}');
                //   LoadingDialog.hide(context);
                hideLoader();
                snackBar(context,
                    title: state.failureResponse!, backgroundColor: Colors.red);
              },
              child: SingleChildScrollView(
                child: Container(
                  height: context.height(),
                  color: kAppColor,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/images/background.svg",
                        fit: BoxFit.fitHeight,
                      ),
                      Container(
                          height: context.height(),
                          width: context.width(),
                          child: Column(
                            children: [
                              50.height,
                              SvgPicture.asset(
                                "assets/images/logo_white.svg",
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  20.height,
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Container(
                                          height: context.height() / 1.8,
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(15.0),
                                                //topRight:  Radius.circular(40.0),
                                              )),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                  width: context.width(),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      SizedBox(
                                                        height: 100,
                                                        width: 150,
                                                        child: SvgPicture.asset(
                                                          height: 100,
                                                          width: 150,
                                                          "assets/images/signin_text.svg",
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 20.0),
                                                        child: GestureDetector(
                                                          onTap: () => context
                                                              .replaceRoute(
                                                                  const SignInRoute()),
                                                          child: const Text(
                                                            'Register',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: kGray),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                TextFieldBlocBuilder(
                                                  textFieldBloc:
                                                      signupFormBloc.email,
                                                  decoration: inputDecoration(
                                                      labelText: 'Email',
                                                      prefixIcon: const Icon(
                                                          PhosphorIcons.user)),
                                                ),
                                                TextFieldBlocBuilder(
                                                  textFieldBloc:
                                                      signupFormBloc.password,
                                                  suffixButton:
                                                      SuffixButton.obscureText,
                                                  obscureTextFalseIcon:
                                                      const Icon(
                                                          PhosphorIcons.eye),
                                                  obscureTextTrueIcon:
                                                      const Icon(PhosphorIcons
                                                          .eyeSlash),
                                                  decoration: inputDecoration(
                                                    labelText: 'Password',
                                                    prefixIcon: const Icon(
                                                        PhosphorIcons.lock),
                                                    //     suffixIcon: Icon(PhosphorIcons.eyeSlash),
                                                  ),
                                                ),
                                                5.height,
                                                GestureDetector(
                                                  onTap: () {
                                                    context.pushRoute(
                                                        const ForgotPasswordRoute());
                                                  },
                                                  child: const Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Text(
                                                      'Forgot password?',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                                const Spacer(),
                                                AppButton(
                                                  title: 'Login',
                                                  color: kButtonColor,
                                                  onPressed: () => context.replaceRoute(
                                                          const TabRoute()),
                                                ),
                                                15.height
                                              ],
                                            ),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              5.height,
                              const Text(
                                'Or sign in with',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: kLightGrayColor),
                              ),
                              25.height,
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SocialMediaWidget(image: 'facebook'),
                                  10.width,
                                  const SocialMediaWidget(image: 'mail'),
                                  10.width,
                                  const SocialMediaWidget(image: 'twitter'),
                                ],
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ));
        }),
      ),
    );
  }
}
