part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class LogInLoading extends AuthState {}

class VerifyLoading extends AuthState {}

class RegisterLoading extends AuthState{}

class LogInSuccess extends AuthState {
  final String phone;

  LogInSuccess({required this.phone});
}

class LogInFailed extends AuthState {
  final String message;

  LogInFailed({required this.message});
}


class RegisterSuccess extends AuthState { 
  final String phone; 


  RegisterSuccess({required this.phone});
}


class RegisterFailed extends AuthState { 
  final String message; 
  
  RegisterFailed({required this.message});
}

class VerificationSuccess extends AuthState { 
  final String token; 

  VerificationSuccess({required this.token});
}

class VerificationFailed extends AuthState { 
  final String message; 

  VerificationFailed({required this.message});
}



