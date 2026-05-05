import 'package:client/core/forms/register_form.dart';
import 'package:client/core/screens/default_widgets/default_app_bar.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget
{
  const RegisterScreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefault(title: "Register"),
      body: const RegisterForm()
    );
  }
}