// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bord_project/src/screens/auth/logic/data/repository/repository.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository authRepository;
  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<LogInUser>(_logInUser);
    on<RegisterUser>(_registerUser);
    on<VerifyUser>(_verifyUser);
  }

  void _logInUser(event, emit) async{
    emit(LogInLoading());
    try{
      String phone = await authRepository.logInUser(event.phone);
      emit(LogInSuccess(phone: phone));
    }on DioError catch(e){
      emit(LogInFailed(message: e.message ?? ''));
    }
  }

  void _registerUser(event, emit) async { 
    emit(RegisterLoading());
    try { 
       String data = await authRepository.registerUser(event.phone,
        event.name, 
        event.surname, 
        event.email, 
        event.gender, 
        event.termAndCondition);
        emit(RegisterSuccess(phone: data));
    } on DioError catch(e) { 
      emit(RegisterFailed(message: e.message ?? ''));
    }
  }

  void _verifyUser(event, emit) async { 
    emit(VerifyLoading()); 
    log("Bloc");
    try { 
      String data = await authRepository.verifyUser(event.phone, event.verificationCode);
      emit(VerificationSuccess(token: data));
    } on DioError catch(e) { 
      emit(VerificationFailed(message: e.message ?? ''));
    }
  }

}



