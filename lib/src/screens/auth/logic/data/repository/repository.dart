import 'package:bord_project/src/screens/auth/logic/data/datasource/datasource.dart';
import 'package:dio/dio.dart';

abstract class AuthRepository{
  Future<String> logInUser(String phone);
  Future<String> registerUser(String phone, String name, String surname, String email, String gender, bool termAndCondition);
  Future<String> verifyUser(String phone, String verificationCode);
}

class AuthRepositoryImpl implements AuthRepository{
  final AuthDataSource authDataSource;

  AuthRepositoryImpl(this.authDataSource);

  @override
  Future<String> logInUser(String phone)async{
    Response response = await authDataSource.logInUser(phone);
    String getPhone = response.data['phone'];
    return getPhone;
  } 

  @override 
  Future<String> registerUser(String phone, String name, String surname, String email, String gender, bool termAndCondition) async{ 
    Response response = await authDataSource.registerUser(phone, name, surname, email, gender, termAndCondition); 
    String phoneData = response.data['phone'];
    return phoneData;
  }

  @override 
  Future<String> verifyUser(String phone, String verificationCode) async { 
    Response response = await authDataSource.verifyUser(phone, verificationCode);
    String getToken = response.data['token']; 
    return getToken;
  }
}
