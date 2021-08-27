import 'package:database_cleaner/services/services.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> doLogin(String username, String password) async {
    var response = await LoginServices.doLogin(username, password);
    if (response.value != null) {
      emit(LoginSuccess(response.value));
    } else {
      emit(LoginFailed(response.message));
    }
  }
}