import 'package:client/core/constants.dart';
import 'package:client/core/screens/default_widgets/default_text_field.dart';
import 'package:flutter/material.dart';

class _LoginFormState extends State<LoginForm>
{
  final GlobalKey<FormState> _key = new GlobalKey<FormState>();

  final TextEditingController _nameController  = new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  bool _isFormValid()
  {
    return _key.currentState!.validate();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit()
  {
    if(!_isFormValid()) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Registered! Hello, ${ _nameController.text}!"))
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(defaultPaddingAmount),
      child: Form(
        key: _key,
        child: Column(
          children: [
            new TextFieldDefault(controller: _nameController, label: "Name", errorLabel: "invalid name"),
            new SizedBox(height: defaultHeightAmount * 2),
            new TextFieldDefault(controller: _emailController, label: "Email", errorLabel: "invalid email"),
            new SizedBox(height: defaultHeightAmount * 2),
            new TextFieldDefault(controller: _passwordController, label: "Password", errorLabel: "invalid password"),
            new SizedBox(height: defaultHeightAmount * 4),
            ElevatedButton(onPressed: _submit, child: const Text("Submit"))
          ],
        )
      )
    );
  }
}

class LoginForm extends StatefulWidget
{
  const LoginForm({ super.key });

  @override
  State<LoginForm> createState() {
    return new _LoginFormState();
  }
}