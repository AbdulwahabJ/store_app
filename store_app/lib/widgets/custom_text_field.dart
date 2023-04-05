// ignore_for_file: non_constant_identifier_names, must_be_immutable, body_might_complete_normally_nullable, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.onChanged,
    this.inputType,
    required this.textHint,
    this.Obscure = false,
  });
//
  String textHint;
  Function(String)? onChanged;
  bool Obscure;
  TextInputType? inputType;
  //
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: Obscure,
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: textHint,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
