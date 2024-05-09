import 'package:flutter/material.dart';
import 'package:nicasiabankclone/src/util/constants.dart';
import 'package:nicasiabankclone/src/widget/login/login_container.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const LoginContainer(),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {},
        child: Image.asset(
          'assets/images/nicLogo.png',
          color: Colors.white,
        ),
      ),
    );
  }
}
