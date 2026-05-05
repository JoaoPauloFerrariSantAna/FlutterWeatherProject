import 'package:client/core/constants.dart';
import 'package:flutter/material.dart';

class TextFieldDefault extends StatelessWidget
{
  final TextEditingController controller;
  final String label;
  final String errorLabel;

  const TextFieldDefault({ 
    super.key,
    required this.controller,
    required this.label,
    required this.errorLabel
  });

  bool _isEmpty(String? value) { return (value == null || value.trim().isEmpty); }

  bool _isUnderMin(String value, int min) { return (value.length < min); }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: this.controller,
      decoration: InputDecoration(
        label: Text(this.label),
        border: UnderlineInputBorder()
      ),
      validator: (value) {
        return (
          _isEmpty(value) || 
          _isUnderMin(value!, stringMinLength)
        )
        ? this.errorLabel
        : null;
      }
    );
  }
}