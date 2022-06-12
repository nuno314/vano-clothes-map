import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class CRUDMethods {
  Future<void> addData(blogData) async {
    await FirebaseFirestore.instance
        .collection("blogs")
        .add(blogData)
        .catchError((e) {});
  }
}
