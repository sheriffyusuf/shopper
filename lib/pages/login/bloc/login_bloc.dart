
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class LoginFormBloc extends FormBloc<String, String> {
  //final ApiRepository _apiRepository;

  final email = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,

      //  FieldBlocValidators.email,
    ],
  );

  final password = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  LoginFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        email,
        password,
      ],
    );
    // return super(null);
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
