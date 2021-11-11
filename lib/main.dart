import 'package:flutter/material.dart';
import 'package:notepadd_firebase/pages/add_notes_page.dart';
import 'package:notepadd_firebase/pages/home_page.dart';
import 'package:notepadd_firebase/pages/login.dart';
import 'package:notepadd_firebase/pages/main_page.dart';
import 'package:notepadd_firebase/pages/signin.dart';


void main() {
  runApp(NotesCustom());
}
class NotesCustom extends StatelessWidget {
  const NotesCustom ({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        MainPage.id: (context) => const MainPage(),
        AddNotesPage.id: (context) => const AddNotesPage(),
      },
    );
  }
}
