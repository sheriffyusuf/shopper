import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class SignupFormBloc extends FormBloc<String, String> {
  //String invalidMail = 'da';
  final name = TextFieldBloc(validators: [FieldBlocValidators.required]);
  final country = TextFieldBloc(validators: [FieldBlocValidators.required]);
  final phoneNumber = TextFieldBloc(
    validators: [FieldBlocValidators.required],
   // asyncValidatorDebounceTime: Duration(milliseconds: 300),
  );

//var email = "tony@starkindustries.com"
//bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  static String? isEmail(String em) {
    if (em != null) {
      if (RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$')
          .hasMatch(em.trim())) {
        return null;
      }
      return 'The email address is badly formatted';
    }
    return 'Email address most be provided';
  }

  final email = TextFieldBloc(validators: [isEmail]);
  final dateOfBirth = InputFieldBloc<DateTime?, dynamic>(initialValue: null);

  final password = TextFieldBloc(validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.passwordMin6Chars
  ]);
  final confirmPassword = TextFieldBloc(
    validators: [FieldBlocValidators.required],
  );

  final agreeToConditions = BooleanFieldBloc();

  //final ApiRepository _apiRepository;
  //final UserRepository _userRepository;

  Validator<String> _confirmPassword(
    TextFieldBloc passwordTextFieldBloc,
  ) {
    return (String confirmPassword) {
      if (confirmPassword == passwordTextFieldBloc.value) {
        return null;
      }
      return 'password does not match';
    };
  }

  SignupFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        name,
        phoneNumber,
        email,
       // dateOfBirth,
        password,
        confirmPassword,
        agreeToConditions
      ],
    );

    //username.addAsyncValidators([_checkUsername]);

    confirmPassword
      ..addValidators([_confirmPassword(password)])
      ..subscribeToFieldBlocs([password]);
  }

/*   Future<String?> _checkUsername(String? username) async {
    bool isAvailable = await _apiRepository.checkUsernameExists(username ?? '');
    if (isAvailable) {
      return null;
    } else {
      return 'username is taken';
    }
  }
 */
  @override
  void onSubmitting() async {
    try {
   /*    String convertedDate =
          DateFormat('yyyy-MM-dd').format(dateOfBirth.value!);
      bool isSuccessful = await _apiRepository.signUp(userInfo: {
        'username': username.value.trim(),
        'email': email.value.trim(),
        'fullname': name.value.trim(),
        'dob': convertedDate,
        'password': password.value.trim()
      });
      if (isSuccessful) {
        AuthResponse res = await _apiRepository.login(
            username: username.value.trim(), password: password.value.trim());
        if (res.flag == true) {
          setValue(kToken, res.data.token);
          setValue(kIsLoggedIn, true);
          setValue(kFullName, res.data.name);
          setValue(kUid, res.data.id);
          setValue(kUserName, res.data.username);
          emitSuccess();
        }
      } */
    } catch (e) {
      emitFailure(failureResponse: '$e');
    }
  }
}
