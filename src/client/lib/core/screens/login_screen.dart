import 'package:client/core/forms/login_form.dart';
import 'package:client/core/screens/default_widgets/default_app_bar.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget
{
  const LoginScreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefault(title: "Login"),
      body: const LoginForm()
    );
  }
}