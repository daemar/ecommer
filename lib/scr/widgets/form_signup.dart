import 'package:ecommer/scr/widgets/widget.dart';
import 'package:flutter/material.dart';

class FormSignUp extends StatelessWidget {
  const FormSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        // key: myFormKey,
        child: Column(children: const [
      Text(
        'Sign Up',
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
      SizedBox(height: 15),
      CustomInputForm(
        hintText: 'Confirmar Password',
        prefixIcon: Icons.lock_outline,
        obscureText: true,
        suffixIcon: Icons.visibility_off_outlined,
      ),
      SizedBox(height: 30),
      Button(
        text: '                Sign Up                ',
        route: 'signin',
        colorbutton: Color.fromARGB(255, 3, 181, 204),
        colortext: Colors.white,
      ),
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
