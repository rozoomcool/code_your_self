import 'package:code_you/features/desktop/desktop.dart';
import 'package:code_you/models/user.dart';
import 'package:code_you/widget/mac_window.dart';
import 'package:code_you/widget/storm_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/domain/consts.dart';
import '../../application/domain/user_state.dart';

class UserAuthForm extends StatefulWidget {
  const UserAuthForm({super.key});

  @override
  State<UserAuthForm> createState() => _UserAuthFormState();
}

class _UserAuthFormState extends State<UserAuthForm> {
  String role = "user";

  int _currentStep = 0;

  List<Step> steps = [
    Step(
      title: Text('Сначала представься', style: textStyle),
      content: Text('Мы пока не знаем кто ты((', style: textStyle),
      isActive: true,
    ),
    Step(
      title: Text('Откуда будешь', style: textStyle),
      content: Text('Не парься, за тобой не заедем. Мы же не чеченцы',
          style: textStyle),
      isActive: false,
    ),
    Step(
      title: Text('Почти закончили', style: textStyle),
      content:
      Text('Никому не говорите ваш пароль(Только мне)', style: textStyle),
      isActive: false,
    )
  ];

  void addUser() {
    var fullName = fullNameController.value.text;
    var email = emailController.value.text;
    var birthDay = birthDayController.value.text;
    var passport = passportController.value.text;
    var password = passwordController.value.text;
    var sex = sexController.value.text;
    var fullAddress = fullAddressController.value.text;

    if (fullName.isNotEmpty &&
        email.isNotEmpty &&
        birthDay.isNotEmpty &&
        password.isNotEmpty &&
        passport.isNotEmpty &&
        sex.isNotEmpty &&
        fullAddress.isNotEmpty) {
      var user = UserModel(role: 'user',
          fullName: fullNameController.text,
          sex: sex,
          email: email,
          password: password,
          date: DateTime.now(),
          fullAddress: fullAddress,
          job: ['Ai', 'VR', 'C#'],
          specialization: 'product',
          serialNumber: '9485837');
      context.read<UserState>().addUser(user);
    }
  }

  final fullNameController = TextEditingController();

  final emailController = TextEditingController();

  final birthDayController = TextEditingController();

  final passwordController = TextEditingController();

  final sexController = TextEditingController();

  final passportController = TextEditingController();

  final fullAddressController = TextEditingController();

  List<String> fields = [
    'Full name',
    'email',
    'birthDay',
    'password',
    'passport',
    'country',
    'fullAddress'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Desktop(
          child: Center(
              child: Row(children: [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                Expanded(
                  flex: 3,
                  child: MacWindow(
                    child: Column(
                      children: [
                        Stepper(
                          steps: steps,
                          currentStep: _currentStep,
                          onStepContinue: () =>
                              setState(() {
                                if (_currentStep <= steps.length) {
                                  steps[_currentStep] = Step(
                                      title: steps[_currentStep].title,
                                      content: steps[_currentStep].content,
                                      isActive: false);
                                  _currentStep++;
                                  steps[_currentStep] = Step(
                                      title: steps[_currentStep].title,
                                      content: steps[_currentStep].content,
                                      isActive: true);
                                }
                              }),
                          onStepCancel: () =>
                              setState(() {
                                if (_currentStep > 0) {
                                  steps[_currentStep] = Step(
                                      title: steps[_currentStep].title,
                                      content: steps[_currentStep].content,
                                      isActive: false);
                                  _currentStep--;
                                  steps[_currentStep] = Step(
                                      title: steps[_currentStep].title,
                                      content: steps[_currentStep].content,
                                      isActive: true);
                                }
                              }),
                          onStepTapped: (step) {
                            setState(() {
                              steps[_currentStep] = Step(
                                  title: steps[_currentStep].title,
                                  content: steps[_currentStep].content,
                                  isActive: false);
                              _currentStep = step;
                              steps[_currentStep] = Step(
                                  title: steps[_currentStep].title,
                                  content: steps[_currentStep].content,
                                  isActive: true);
                            });
                          },
                          controlsBuilder: (context, _) => _buildStepContent(),
                        ),
                        ElevatedButton(
                            onPressed: () => addUser(),
                            child: Text('Зарегестрироваться', style: textStyle))
                      ],
                    ),
                  ),
                ),
                Expanded(flex: 2, child: Container())
              ])),
        ),
      ),
    );
  }

  Widget _buildStepContent() {
    switch (_currentStep) {
      case 0:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            StormText(controller: fullNameController, hintText: "ФИО:"),
            const SizedBox(height: 20.0),
            StormText(controller: sexController, hintText: "Пол:"),
            const SizedBox(height: 20.0),
            StormText(
                controller: birthDayController, hintText: "Дата рождения:"),
          ],
        );
      case 1:
        return Column(
          children: [
            const SizedBox(height: 20.0),
            StormText(
                controller: passportController, hintText: "Серия пасспорта:"),
            const SizedBox(height: 20.0),
            StormText(
                controller: fullAddressController, hintText: "Полный адрес:")
          ],
        );
      case 2:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            StormText(controller: birthDayController, hintText: "Ваш пароль:"),
          ],
        );
      default:
        return Container();
    }
  }
}
