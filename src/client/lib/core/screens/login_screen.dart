import 'package:client/core/screens/default_widgets/default_app_bar.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget
{
  final String title;

  const LoginScreen({ super.key, required this.title });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefault(title: title),
      body: Row(children: [const Text("hello login")],)
    );
  }
}