import 'package:flutter/material.dart';


import 'package:notepadd_firebase/pages/add_notes_page.dart';

// Tela com a listView com a lista de notas
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static const String id = 'main';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Text('Notas'),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 20.0),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: const Text('Nota 1'),
                      subtitle: const Text('Esta é a nota 1'),
                      tileColor: Colors.red[100],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: const Text('Nota 2'),
                      subtitle: const Text('Esta é a nota 2'),
                      tileColor: Colors.red[100],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: const Text('Nota 3'),
                      subtitle: const Text('Esta é a nota 3'),
                      tileColor: Colors.red[100],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.pushNamed(context, AddNotesPage.id);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}