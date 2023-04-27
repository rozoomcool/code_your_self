import 'package:code_you/widget/mac_window.dart';
import 'package:flutter/material.dart';

class UserAuthForm extends StatelessWidget{
  UserAuthForm({super.key});

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final daddyController = TextEditingController();
  final emailController = TextEditingController();
  final birthDayController = TextEditingController();
  final passwordController = TextEditingController();
  final passportController = TextEditingController();
  final countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MacWindow(
      child: Column(
        children: [
          
        ],
      )
    );
  }

}