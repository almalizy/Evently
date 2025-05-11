
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseServices {
  static Future<void> addEventToFireStore( event ){
    /// add event to fireStore
    FirebaseFirestore db =   FirebaseFirestore.instance;
    CollectionReference<Map<String, dynamic>>  eventCollection = db.collection("events");
    DocumentReference<Map<String, dynamic>>  document = eventCollection.doc();
    return document.set(
      {
        "title":event.title,
        "description":event.description,
        "category":event.category,
        "date":event.date
      }
    );
  }
}