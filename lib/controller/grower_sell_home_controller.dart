import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/model/seller/seller.dart';
import 'package:my_first_app/model/seller_city/seller_city.dart';

class GrowerSellHomeController extends GetxController{

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference sellerCollection;
  late CollectionReference cityCollection;


  List<Seller> sellers = [];
  List<Seller> sellerShowInUI = [];
  List<SellerCity> sellerCitys = [];
  

@override
  Future<void> onInit() async {
    sellerCollection = firestore.collection('sellers');
    cityCollection = firestore.collection('city');
    await fetchCity();
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
   sellerShowInUI.assignAll(sellers);
   Get.snackbar('Sucess', 'Seller fetch successfully',colorText: Colors.green);
  } catch (e) {
    Get.snackbar('Error', e.toString(),colorText: Colors.red);
    print(e);
  }finally{
    update();
  }
}

fetchCity() async {
  try {
  QuerySnapshot citySnapshot = await cityCollection.get();
  final List<SellerCity> retrievedcitys = citySnapshot.docs.map((doc) =>
   SellerCity.fromJson(doc.data() as Map<String, dynamic>)).toList();
   sellerCitys.clear();
   sellerCitys.assignAll(retrievedcitys);
  } catch (e) {
    Get.snackbar('Error', e.toString(),colorText: Colors.red);
    print(e);
  }finally{
    update();
  }
}

filterByCity(String city) {
  sellerShowInUI.clear();
  sellerShowInUI = sellers.where((seller) => seller.city == city).toList();
  update();
}
sortByPrice({required bool ascending}){
  List<Seller> sortedSellers = List<Seller>.from(sellerShowInUI);
  sortedSellers.sort((a, b) => ascending ? a.largeprice!.compareTo(b.largeprice!) : b.largeprice!.compareTo(a.largeprice!));
  sellerShowInUI = sortedSellers;
  update();
}
}