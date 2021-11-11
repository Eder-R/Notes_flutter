import 'package:flutter/material.dart';

import '../widgets/round_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  static const String id = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Notas', 
              style: TextStyle(
                fontSize: 50.0, 
                fontWeight: FontWeight.bold
                ),
              ),
            SizedBox(
              height: 30.0,
              ),
              RoundedButton(
                color: Colors.redAccent,
                title: 'Login',
                onPressed: () {},
                ),
                RoundedButton(
                color: Colors.red[700],
                title: 'Registrar-se',
                onPressed: () {},
                ),
        ],
      ),
      ),
    );
  }
}