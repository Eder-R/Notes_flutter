import 'package:cloud_firestore/cloud_firestore.dart';


final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _noteCollection =
      _firestore.collection('notes');
class Note_Service {
  static Stream<QuerySnapshot> getNoteList() {
    return _noteCollection.snapshots();
  }
}