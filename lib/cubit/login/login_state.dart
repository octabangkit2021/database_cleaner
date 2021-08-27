part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginSuccess extends LoginState {
  final String? response;

  LoginSuccess(this.response);

  @override
  List<Object> get props => [response!];
}

class LoginFailed extends LoginState {
  final String? message;

  LoginFailed(this.message);

  @override
  List<Object> get props => [message!];
}
