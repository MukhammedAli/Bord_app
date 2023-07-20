import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:bord_project/constants/paddings.dart';
import 'package:bord_project/src/core/dependencies/injection_container.dart';
import 'package:bord_project/src/router/router.dart';
import 'package:bord_project/src/screens/auth/logic/bloc/auth_bloc.dart';

import 'package:bord_project/widgets/custom_textfield.dart';
import 'package:bord_project/widgets/cutsom_text.dart';
import 'package:bord_project/widgets/mybutton.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final TextEditingController phoneController = MaskedTextController(mask: '+7 000 000 0000');

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () => print('Something'),
                        child: Text(
                          'Регистрация',
                          style: TextStyle(fontSize: 16),
                        ))),
                Padding(
                  padding: EdgeInsets.only(top: 68),
                  child: CustomText(txt: 'Войти'),
                ),
                Padding(
                  padding: ApplicationPaddings.signIn,
                  child: CustomTextField(
                      label: '+7 ( ) - -', 
                      controller: phoneController,
                    ),
                ),
                Padding(
                  padding: ApplicationPaddings.signIn,
                  child: BlocConsumer<AuthBloc, AuthState>(
                    listener: (context,state){
                      state is LogInSuccess ? context.router.push( VerificationScreenRoute(phone: state.phone)) : null;
                      if(state is LogInFailed){
                        log(state.message);
                      }
                    },
                    builder: (context, state) {
                      return MyButton(
                          onPressed: state is LogInLoading ? null : () => 
                          context.read<AuthBloc>().add(LogInUser(phone: phoneController.text)),
                          text: 'Далее');
                    },
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
