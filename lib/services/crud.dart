import 'package:cloud_firestore/cloud_firestore.dart';

class CrudMethods {
  Future<void> addData(blogData) async {
    Firestore.instance.collection("blogs").add(blogData).catchError((e) {
      print(e);
    });
  }

  getData() async {
    // ignore: await_only_futures
    return await Firestore.instance.collection("blogs").snapshots();
  }

  // getData() async {
  //   return await Firestore.instance.collection('blogs').getDocuments();
  // }
}
