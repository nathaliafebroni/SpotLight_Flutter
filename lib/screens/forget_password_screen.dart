import 'package:flutter/material.dart';
import 'package:spotlight/widgets/pass_scaffold.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _email = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Insira seu email para enviar uma mensagem para resetar sua senha",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _email,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Insira seu email',
                hintStyle: TextStyle(
                  color: Colors.black26,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Enviar email'),
            ),
          ],
        ),
      ),
    );
  }
}
