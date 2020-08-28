import 'package:cloud_firestore/cloud_firestore.dart';

class CrudMethods {
  Future<void> addData(reportData) async {
    Firestore.instance.collection("Complaints").add(reportData).catchError((e) {
      print(e);
    });
  }
}
