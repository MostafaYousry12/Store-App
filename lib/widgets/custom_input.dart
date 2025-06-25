import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  CustomInput.CustomFormInput(
      {required this.hintText, this.inputType, this.onChange});
  String? hintText;
  Function(String)? onChange;
  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(16),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
