import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/model/seller/seller.dart';

class GrowerSellHomeController extends GetxController{

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference sellerCollection;

  List<Seller> sellers = [];

@override
  Future<void> onInit() async {
    sellerCollection = firestore.collection('sellers');
    await fetchSellers();
    super.onInit();
  }

fetchSellers() async {
  try {
  QuerySnapshot sellerSnapshot = await sellerCollection.get();
  final List<Seller> retrievedSellers = sellerSnapshot.docs.map((doc) =>
   Seller.fromJson(doc.data() as Map<String, dynamic>)).toList();
   sellers.clear();
   sellers.assignAll(retrievedSellers);
   Get.snackbar('Sucess', 'Seller fetch successfully',colorText: Colors.green);
  } catch (e) {
    Get.snackbar('Error', e.toString(),colorText: Colors.red);
    print(e);
  }finally{
    update();
  }
}
}