
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evently/data/DM/eventDM.dart';

class FirebaseServices {
  static Future<void> addEventToFireStore(EventDM event ){
    /// add event to fireStore
    FirebaseFirestore db =   FirebaseFirestore.instance;
    CollectionReference<Map<String, dynamic>>  eventCollection = db.collection("events");
    DocumentReference<Map<String, dynamic>>  document = eventCollection.doc();
    return document.set(event.toJson()
      // {
      //   "title":event.title,
      //   "description":event.description,
      //   "category":event.category,
      //   "date":event.date
      // }
    );
  }
  getEventFromFireStore(){

  }
}