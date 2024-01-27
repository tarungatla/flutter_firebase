import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addFriendDetails(
      Map<String, dynamic> friendDetailsMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Friend")
        .doc(id)
        .set(friendDetailsMap);
  }

  Future<Stream<QuerySnapshot>> getFriendDetails() async {
    return await FirebaseFirestore.instance.collection("Friend").snapshots();
  }

  Future updateFriendDetails(String id, Map<String, dynamic> details) async {
    return await FirebaseFirestore.instance.collection("Friend").doc(id).update(details);
  }
}
