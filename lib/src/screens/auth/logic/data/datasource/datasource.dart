import 'dart:developer';

import 'package:bord_project/src/core/constants/app_url.dart';
import 'package:dio/dio.dart';

abstract class AuthDataSource{
  Future<Response> logInUser(String phone);
  Future<Response> registerUser(String phone, String name, String surname, String email, String gender, bool termAndCondition);
  Future<Response> verifyUser(String phone, String verificationCode);
}

class AuthDataSourceImpl implements AuthDataSource{
  Dio dio = Dio();

  @override
  Future<Response> logInUser(String phone) async{
    Response response = await dio.post('${AppUrl.baseUrl}/mobile/auth/login',
    options: Options(headers: {
      'Accept':"application/json"
      },
    ),
    data: {
      "phone": phone,
    });
    return response;
  }

  @override
  Future<Response> registerUser(String phone, String name, String surname, String email, String gender, bool termAndCondition) async { 
    log('Request Send');
    Response response = await dio.post('${AppUrl.baseUrl}/mobile/auth/register',
    options:  Options(headers: {
      'Accept' : "application/json"
      },
      ),
      data: { 
        "phone": phone, 
        "name": name, 
        "surname": surname, 
        "email": email, 
        "gender": gender, 
        "term_and_condition": termAndCondition, 
      }); 
    return response;
}

  @override 
  Future<Response> verifyUser(String phone, String verificationCode) async { 
    Response response = await dio.post('${AppUrl.baseUrl}/mobile/auth/login/verify-code',
    options: Options(headers: {
      'Accept' : 'application/json'
    },
    ),
    data: { 
      "phone": phone, 
      "verification_code": verificationCode,
    }
    );
    log(response.data.toString());
    return response;

  }
}