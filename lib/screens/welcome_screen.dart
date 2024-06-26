import 'package:flutter/material.dart';
import 'package:spotlight/screens/signin_screen.dart';
import 'package:spotlight/screens/signup_screen.dart';
import 'package:spotlight/theme/theme.dart';
import 'package:spotlight/widgets/custom_scaffold.dart';
import 'package:spotlight/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 40.0,
              ),
            child: Center(
              child: RichText(
        textAlign: TextAlign.center,
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Bem-Vindo de Volta!\n',
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                )),
              TextSpan(
                text: 
                '\nCompre ingressos para seus espetáculos favoritos',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                  //height: 0,
                ))
            ],
          ),
        ),),
          )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                 const Expanded(
                  child: WelcomeButton(
                    buttonText: 'Sign in',
                    onTap: SignInScreen(),
                    color: Colors.transparent,
                    textColor: Colors.white,
                  ),
                  ),
                 Expanded(
                  child: WelcomeButton(
                    buttonText: 'Cadastre-se',
                    onTap: const SignUpScreen(),
                    color: Colors.white,
                    textColor: lightColorScheme.primary,
                  ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}