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
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Gender { male, female }

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool checkval = false;
  Gender? _gender = Gender.male;
  var maskFormatter = new MaskTextInputFormatter(
    mask: '+# (###) ###-##-##',
  );



  final TextEditingController phoneController =
      MaskedTextController(mask: '+7 000 000 0000');
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController surnameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController genderController = new TextEditingController();
  final TextEditingController termAndConditionController =
      new TextEditingController();
  final TextEditingController codeController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.green;
    }

    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: CustomText(txt: 'Регистрация')),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
                child: CustomTextField(
                  label: 'Номер',
                  controller: phoneController,
                ),
              ),
              Padding(
                padding: ApplicationPaddings.forTextField,
                child: CustomTextField(
                  label: 'Имя',
                  controller: nameController,
                ),
              ),
              Padding(
                padding: ApplicationPaddings.forTextField,
                child: CustomTextField(
                  label: 'Фамилия',
                  controller: surnameController,
                ),
              ),
              Padding(
                padding: ApplicationPaddings.forTextField,
                child: CustomTextField(
                  label: 'Почта',
                  controller: emailController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 36, bottom: 15, left: 25),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 17.0),
                      child: Text('Пол'),
                    ),
                    Row(
                      children: [
                        Radio<Gender>(
                          groupValue: _gender,
                          value: Gender.male,
                          onChanged: (Gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                        Text('Мужской'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<Gender>(
                          groupValue: _gender,
                          value: Gender.female,
                          onChanged: (Gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                        Text('Женский'),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: ApplicationPaddings.horizontal,
                child: CustomTextField(
                  label: 'Код друга (не обязательно)',
                  controller: codeController,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: checkval,
                        onChanged: (bool? value) {
                          setState(() {
                            checkval = value!;
                          });
                        },),
                    Text('Я ознакомлен с'),
                    // TextButton(onPressed: ()=> print('Something'), child: Text('Пользовательским соглашением')),
                  ],
                ),
              ),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  // TODO: implement listener
                  state is RegisterSuccess ? context.router.push(VerificationScreenRoute(phone: state.phone)) : null;
                  if (state is RegisterFailed) { 
                    log(state.message);
                  }
                },
                builder: (context, state) {
                  return MyButton(
                      onPressed: state is RegisterLoading ? null : () =>
                          context.read<AuthBloc>().add(RegisterUser(phone: phoneController.text,
                          name: nameController.text, surname: phoneController.text, email: emailController.text,
                          gender: (_gender == Gender.male) ? "1" : "2" ,
                          termAndCondition: checkval,
                          )),
                    text: 'Далее');
                    
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Row(
                  children: [
                    Text('У меня уже есть аккаунт'),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: TextButton(
                          onPressed: () => print('Something'),
                          child: const Text('Войти')),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}

/*
 Row(children: [Text(
          'Пол'
        ),
        ListTile(title: Text('Мужской'),leading: Radio<Gender>(
          value: Gender.male,
          groupValue: _gender,
          onChanged: (Gender? value) {
              setState(() {
                _gender = value;
              });
          },
        ),),
        ListTile(title: Text('Женский'),
        leading: Radio<Gender>(
          value: Gender.male,
          groupValue: _gender,
          onChanged: (Gender? value) {
              setState(() {
                _gender = value;
              });
          },
        )),],)
*/







