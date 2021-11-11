import 'package:flutter/material.dart';
import 'package:notepadd_firebase/constants.dart';
import 'package:notepadd_firebase/pages/main_page.dart';
import 'package:notepadd_firebase/widgets/round_button.dart';

class AddNotesPage extends StatefulWidget {
  const AddNotesPage({Key? key}) : super(key: key);

  static const String id = 'add_notes_page';

  @override
  _AddNotesPageState createState() => _AddNotesPageState();
}

class _AddNotesPageState extends State<AddNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Text('Adicionar Nota'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Título da nota'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Expanded(
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Descrição da nota',
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            RoundedButton(
              title: 'Adicionar Nota',
              onPressed: () {
                Navigator.pushNamed(context, MainPage.id);
              },
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}