import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:notepadd_firebase/pages/add_notes_page.dart';
import 'package:notepadd_firebase/pages/home_page.dart';
import 'package:notepadd_firebase/pages/login.dart';
import 'package:notepadd_firebase/pages/main_page.dart';
import 'package:notepadd_firebase/pages/signin.dart';


void main() {
  runApp(NotesCustom());
}
class NotesCustom extends StatefulWidget {
  const NotesCustom ({Key? key}) : super(key: key);

  @override
  _NotesCustomState createState() => _NotesCustomState();
}

class _NotesCustomState extends State<NotesCustom> {
  Future<FirebaseApp> _initializeFirebase() async {
    return await Firebase.initializeApp();
  }

 @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeFirebase(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('Error while initializing Firebase')
          );
        } 
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            initialRoute: RegisterScreen.id,
            routes: {
              HomePage.id: (context) => const HomePage(),
              LoginScreen.id: (context) => const LoginScreen(),
              RegisterScreen.id: (context) => const RegisterScreen(),
              MainPage.id: (context) => const MainPage(),
              AddNotesPage.id: (context) => const AddNotesPage(),
            },
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
          );
      },
    );
  }
}