import 'package:code_you/features/desktop/desktop.dart';
import 'package:code_you/widget/mac_window.dart';
import 'package:code_you/widget/storm_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserAuthForm extends StatelessWidget {
  UserAuthForm({super.key});

  String role = "user";

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final daddyController = TextEditingController();
  final emailController = TextEditingController();
  final birthDayController = TextEditingController();
  final passwordController = TextEditingController();
  final passportController = TextEditingController();
  final countryController = TextEditingController();
  final addressController = TextEditingController();

  List<String> fields = ['Full name', 'email', 'birthDay', 'password', 'passport', 'country', 'fullAddress'];

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
                mainAxisSize: MainAxisSize.min,
                children: [
                  StormText(
                      controller: firstNameController, hintText: 'firstName')
                ],
              )),
            ),
            Expanded(flex: 2, child: Container())
          ])),
        ),
      ),
    );
  }
}
