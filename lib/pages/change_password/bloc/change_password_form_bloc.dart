
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class ChangePasswordFormBloc extends FormBloc<String, String> {
  //final ApiRepository _apiRepository;

   final password = TextFieldBloc(validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.passwordMin6Chars
  ]);
  final confirmPassword = TextFieldBloc(
    validators: [FieldBlocValidators.required],
  );

  

  ChangePasswordFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        password,
        confirmPassword
       // password,
      ],
    );
     confirmPassword
      ..addValidators([_confirmPassword(password)])
      ..subscribeToFieldBlocs([password]);
    // return super(null);
  }

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
  @override
  void onSubmitting() async {
    try {
     /*  AuthResponse res = await _apiRepository.login(
          username: username.value.trim(), password: password.value.trim());

      if (res.flag == true) {
       
        emitSuccess(successResponse: res);
      } */
    } catch (e) {
      //  logger.d(e);
      //   print(' an error is occuring ohhh');
      /*    if (e is LogInWithEmailAndPasswordFailure) {
        emitFailure(failureResponse: e.message);
      } else */
      if (e == 'username-not-found') {
       // emitFailure(failureResponse: 'Account does not exist!');
      } else {
       // emitFailure(failureResponse: e.toString());
      }
    }
    //    emitFailure(failureResponse: 'This is an awesome error!');
  }
}
