import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:notepadd_firebase/constants.dart';
import 'package:notepadd_firebase/pages/main_page.dart';
import 'package:notepadd_firebase/widgets/round_button.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const String id = 'register';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  late String email;
  late String password;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'Notas - Nova Conta',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Entre seu email'),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Entre sua senha'),
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Registrar-se',
              onPressed: () async{
                await _auth.createUserWithEmailAndPassword(
                  email: email, 
                  password: password
                  );
                  Navigator.pushNamed(context, MainPage.id);
              },
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}