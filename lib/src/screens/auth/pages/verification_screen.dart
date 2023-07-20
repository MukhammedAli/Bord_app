import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:bord_project/constants/paddings.dart';
import 'package:bord_project/src/core/dependencies/injection_container.dart';
import 'package:bord_project/src/router/router.dart';
import 'package:bord_project/src/screens/auth/logic/bloc/auth_bloc.dart';
import 'package:bord_project/widgets/cutsom_text.dart';
import 'package:bord_project/widgets/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationScreen extends StatefulWidget {

  final String phone;
  
  const VerificationScreen({super.key, required this.phone});

  

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String? requiredOTP;
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    log(widget.phone);
    return BlocProvider(
         create: (context) => getIt<AuthBloc>(),
      child: Scaffold(
        body: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: CustomText(txt: 'СМС подтверджение'),
                    ),
                    Pinput(

                      controller: otpController,

                      // validator: (otp) {
                        
                      //   if (otp == requiredOTP) {
                      //     print('Valid');
                      //   }
                      //   return 'Неверный номер телефона';
                      // },
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 81, right: 82),
                      child: Text(
                        'Повторно запросить SMS-код можно через секунд',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    BlocConsumer<AuthBloc, AuthState>(
                      listener: (context, state) {
                        // TODO: implement listener
                        state is VerificationSuccess ? context.router.push(TestPageRoute(token: state.token)) : null; 
                        
                        if (state is VerificationFailed) { 
                          log(state.message);
                          
                        }
                      },
                      builder: (context, state) {
                        return Padding(
                          padding: ApplicationPaddings.signIn,
                          child: MyButton(
                            text: 'Войти',
                            onPressed: state is VerifyLoading ? null : () {
                              log('Tap');
                              context.read<AuthBloc>().add(VerifyUser(phone: widget.phone, verificationCode: otpController.text));
                            }
                          ),
                        );
                      },
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}







