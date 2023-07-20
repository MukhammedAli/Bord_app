part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class LogInUser extends AuthEvent{
  final String phone;

  LogInUser({required this.phone});
}


class RegisterUser extends AuthEvent { 
  final String phone; 
  final String name; 
  final String surname; 
  final String email; 
  final String gender; 
  final bool termAndCondition;

 RegisterUser({required this.phone, required this.name, required this.surname, required this.email, required this.gender, required this.termAndCondition});

}

class VerifyUser extends AuthEvent { 
  final String phone; 
  final String verificationCode;

  VerifyUser({required this.phone, required this.verificationCode});
}