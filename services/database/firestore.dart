import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  //get collection of orders
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  //save order to DB
  Future<void> saveOrderToDatabase(String receipt) async {
    try {
      await orders.add({
        'date': DateTime.now(),
        'order': receipt,
      });
    } catch (e) {
      print('Error saving order: $e');
      // Handle error (e.g., show error message to user)
    }
  }
}
