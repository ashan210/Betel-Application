import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/model/seller/seller.dart';

class SellerHMController extends GetxController{

  
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference sellerCollection;

  TextEditingController sellerNameCtrl = TextEditingController();
  TextEditingController sellerDescriptionCtrl = TextEditingController();
  TextEditingController sellerLocation = TextEditingController();
  TextEditingController sellerLargePrice = TextEditingController();
  TextEditingController sellerMediumPrice = TextEditingController();
  TextEditingController sellerSmallPrice = TextEditingController();

  String city = 'dompe';

  List<Seller> sellers = [];

@override
  Future<void> onInit() async {
    sellerCollection = firestore.collection('sellers');
    await fetchSellers();
    super.onInit();
  }

addSeller(){
  try {
  DocumentReference doc = sellerCollection.doc();
  Seller seller = Seller(
    id:doc.id,
    name: sellerNameCtrl.text,
    description: sellerDescriptionCtrl.text,
    location: sellerLocation.text,
    largeprice: double.tryParse(sellerLargePrice.text),
    mediumprice: double.tryParse(sellerMediumPrice.text),
    smallprice: double.tryParse(sellerSmallPrice.text),
    city: city, 

  );
  final sellerJson = seller.toJson();
  doc.set(sellerJson);
  Get.snackbar('Success', 'Seller added successfully',colorText: Colors.green);
  setValuesDefault();
} catch (e){
  Get.snackbar('Error', e.toString(),colorText: Colors.green);
  print(e);
}
}

fetchSellers() async {
  try {
  QuerySnapshot sellerSnapshot = await sellerCollection.get();
  final List<Seller> retrievedSellers = sellerSnapshot.docs.map((doc) =>
   Seller.fromJson(doc.data() as Map<String, dynamic>)).toList();
   sellers.clear();
   sellers.assignAll(retrievedSellers);
   Get.snackbar('Sucess', 'Seller fetch successfully',colorText: Colors.green);
  } catch (e){
    Get.snackbar('Error', e.toString(),colorText: Colors.red);
    print(e);
  }
}


setValuesDefault(){
 sellerNameCtrl.clear();
 sellerDescriptionCtrl.clear();
 sellerLocation.clear();
 sellerLargePrice.clear();
 sellerMediumPrice.clear();
 sellerSmallPrice.clear();

 city = 'dompe';
 update();

}



}