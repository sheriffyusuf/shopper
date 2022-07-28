import 'package:auto_route/auto_route.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_shopper/gen_widget/app_button.dart';
import 'package:flutter_shopper/gen_widget/input_decoration.dart';

import 'package:flutter_shopper/pages/signin/bloc/sign_form_bloc.dart';
import 'package:flutter_shopper/route/router.gr.dart';
import 'package:flutter_shopper/utils/colors.dart';
import 'package:flutter_shopper/utils/loader.dart';
import 'package:flutter_shopper/utils/others.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart' hide AppButton;
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
          return SignupFormBloc();
        },
        child: Builder(builder: (context) {
          final signupFormBloc = context.read<SignupFormBloc>();
          return SafeArea(
              child: Scaffold(
            backgroundColor: kAppColor,
            body: FormBlocListener<SignupFormBloc, String, String>(
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
                                          height: context.height() / 1.5,
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
                                                      GestureDetector(
                                                        onTap: () =>
                                                            context.replaceRoute(
                                                                const LoginRoute()),
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 20.0),
                                                          child: Text(
                                                            'Login',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: kGray),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 100,
                                                        width: 150,
                                                        child: SvgPicture.asset(
                                                          height: 100,
                                                          width: 150,
                                                          "assets/images/register.svg",
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
                                                  readOnly: true,
                                                  textFieldBloc:
                                                      signupFormBloc.country,
                                                  decoration: inputDecoration(
                                                      labelText: 'Phone number',
                                                      prefixIcon: const Icon(
                                                          PhosphorIcons
                                                              .phoneCallLight)),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    showCountryPicker(
                                                        context: context,
                                                        //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                                                        // exclude: <String>['KN', 'MF'],
                                                        // favorite: <String>['SE'],
                                                        //Optional. Shows phone code before the country name.
                                                       // showPhoneCode: true,
                                                        onSelect:
                                                            (Country country) {
                                                          signupFormBloc.country
                                                              .updateValue(country
                                                                  .displayName);
                                                          print(
                                                              'Select country: ${country.displayName}');
                                                        },
                                                        // Optional. Sets the theme for the country list picker.
                                                        countryListTheme:
                                                            const CountryListThemeData(
                                                                // Optional. Sets the border radius for the bottomsheet.
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  40.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  40.0),
                                                        )));
                                                  },
                                                  child: TextFieldBlocBuilder(
                                                    textFieldBloc: signupFormBloc
                                                        .phoneNumber,
                                                    decoration: inputDecoration(
                                                        labelText: 'Pick country',
                                                        suffixIcon: const Icon(
                                                            Icons
                                                                .arrow_drop_down),
                                                        prefixIcon: const Icon(Icons
                                                            .location_city_outlined)),
                                                  ),
                                                ),
                                                TextFieldBlocBuilder(
                                                  textFieldBloc:
                                                      signupFormBloc.password,
                                                  suffixButton:
                                                      SuffixButton.obscureText,
                                                  obscureTextFalseIcon:
                                                      const Icon(
                                                          PhosphorIcons.eye),
                                                  obscureTextTrueIcon: const Icon(
                                                      PhosphorIcons.eyeSlash),
                                                  decoration: inputDecoration(
                                                    labelText: 'Password',
                                                    prefixIcon: const Icon(
                                                        PhosphorIcons.lock),
                                                    //     suffixIcon: Icon(PhosphorIcons.eyeSlash),
                                                  ),
                                                ),
                                                CheckboxFieldBlocBuilder(
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                          Colors.black),
                                                  checkColor:
                                                      MaterialStateProperty.all(
                                                          Colors.white),
                                                  booleanFieldBloc: signupFormBloc
                                                      .agreeToConditions,
                                                  body: RichText(
                                                    overflow:
                                                        TextOverflow.ellipsis,
              
                                                    // maxLines: 1,
                                                    text: TextSpan(
                                                      text: 'I accepted ',
                                                      style: const TextStyle(
                                                          color: kGray,
                                                          height: 1.5,
                                                          fontSize: 14.0),
                                                      children: [
                                                        TextSpan(
                                                            text:
                                                                'Terms & Privacy Policy',
                                                            style: const TextStyle(
                                                                color: kAppColor,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                            recognizer:
                                                                TapGestureRecognizer()
                                                                  ..onTap =
                                                                      () async {
                                                                    try {
                                                                      /* _launchUrl(context,
                                          "https://vigoplace.com/terms-and-conditions"); */
                                                                      /*      await launch('https://flutter.dev',
                                          forceWebView: true,
                                          //   forceSafariVC: true,
                                          enableJavaScript: true); */
                                                                    } catch (e) {
                                                                      log('invalid url');
                                                                    }
                                                                  }),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                //const Spacer(),
                                                AppButton(
                                                  title: 'Register',
                                                  color: kButtonColor,
                                                  onPressed: () =>
                                                      context.replaceRoute(
                                                          const LoginRoute()),
                                                ),
                                                15.height
                                              ],
                                            ),
                                          )),
                                    ),
                                  ),
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
