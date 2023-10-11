import 'package:cloud_firestore/cloud_firestore.dart';

class dataadd {
  late String id;
  late String title;
  late String description;
  late DateTime date;
  late bool isDone;

  dataadd(this.id, this.title, this.description, this.date, this.isDone);
  dataadd.fromJson(Map json) {
    id = json["id"];
    title = json["title"];
    description = json["description"];
    Timestamp time = json["date"];
    date = time.toDate();
    isDone = json["isDone"];
  }
}
