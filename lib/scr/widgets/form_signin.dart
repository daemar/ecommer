import 'package:ecommer/scr/widgets/widget.dart';
import 'package:flutter/material.dart';

class FormSignIn extends StatelessWidget {
  const FormSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        // key: myFormKey,
        child: Column(children: const [
      Text(
        'Sign In',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 1, 204, 194)),
      ),
      SizedBox(height: 30),
      CustomInputForm(
        hintText: 'Email Address',
        prefixIcon: Icons.email_outlined,
        keyboardType: TextInputType.emailAddress,
      ),
      SizedBox(height: 15),
      CustomInputForm(
        hintText: 'Password',
        prefixIcon: Icons.lock_outline,
        obscureText: true,
        suffixIcon: Icons.visibility_off_outlined,
      ),
      SizedBox(height: 30),
      Text(
        'Forgot your password',
        style: TextStyle(color: Color.fromARGB(255, 20, 92, 88)),
      ),
      SizedBox(height: 30),
      Button(text: '                Login               ', route: 'bar'),
      SizedBox(height: 50),
      Text(
        'Or using social media',
        style: TextStyle(color: Color.fromARGB(255, 20, 92, 88)),
      ),
      SizedBox(height: 20),
      //*****Redes Sociales
      RedesSociales(),
    ]));
  }
}
