import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(66, 63, 63, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
        ),
      ),
      child: const Text(
        'Aperte me',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}