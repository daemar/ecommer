import 'package:flutter/material.dart';

class CustomInputForm extends StatelessWidget {
  final String? hintText;
  //final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;

  //final String formProperty;
  //final Map<String, String> formValues;
  const CustomInputForm({
    super.key,
    this.hintText,
    //this.labelText,
    this.helperText,
    this.icon,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    //required this.formProperty,
    /*required this.formValues*/
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        obscureText: obscureText!,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          //labelText: labelText,
          helperText: helperText,
          prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
        ));
  }
}
