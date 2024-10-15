part of 'auth_cubit.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitialState extends AuthState {}

final class AuthLoadingState extends AuthState {}

final class AuthSuccessState extends AuthState {
  final LoginModel loginModel;
  const AuthSuccessState(this.loginModel);
  @override
  List<Object> get props => [loginModel];
}

final class AuthFailureState extends AuthState {
  final String error;
  const AuthFailureState(this.error);
  @override
  List<Object> get props => [error];
}
