import 'package:ecommer/scr/widgets/widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.teal[400],
        body: CustomScrollView(slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: size.height * 0.9,
              width: size.width * 0.9,
              child: Stack(
                children: [
                  CardBack(
                      color: const Color.fromARGB(255, 159, 223, 212),
                      topp: size.height * 0.1,
                      leftp: size.width * 0.16,
                      rightp: size.width * 0.16,
                      heightc: size.height * 0.20,
                      widthc: size.width * 0.2,
                      widgetr: false),
                  CardBack(
                    color: Colors.white,
                    topp: size.height * 0.12,
                    leftp: size.width * 0.1,
                    rightp: size.width * 0.1,
                    heightp: size.height * 0.65,
                    widthc: size.width * 0.90,
                    widgetr: true,
                    form: const FormSignIn(),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account ? ",
                    style: TextStyle(color: Colors.white)),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'signup');
                    },
                    child: const Text('Sign Up',
                        style: TextStyle(color: Colors.white))),
              ],
            ),
          ]))
        ]));
  }
}
