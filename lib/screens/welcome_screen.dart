import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                )),
              TextSpan(
                text: 
                '\nInsira dados pessoais em sua conta',
                style: TextStyle(
                  fontSize: 20,
                  //height: 0,
                ))
            ],
          ),
        ),),
          )),
          const Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                 Expanded(child: WelcomeButton(),),
                 Expanded(child: WelcomeButton(),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}