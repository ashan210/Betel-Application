import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/model/user/user.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';

class LoginController extends GetxController{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference userCollection;

  TextEditingController registerNameCtrl = TextEditingController();
  TextEditingController registerNumberCtrl = TextEditingController();

  OtpFieldControllerV2 otpController = OtpFieldControllerV2();
  bool otpFieldShown = false;
  int? otpSend;
  int? otpEnter;

  @override
  void onInit() {
    userCollection = firestore.collection('users');
    super.onInit();
  }




addUser(){
  try {
 
  DocumentReference doc = userCollection.doc();
  User user = User(
    id:doc.id,
    name: registerNameCtrl.text,
    number: int.parse(registerNumberCtrl.text),
    

  );
  final userJson = user.toJson();
  doc.set(userJson);
  Get.snackbar('Success', 'User added successfully',colorText: Colors.green);
} catch (e){
  Get.snackbar('Error', e.toString(),colorText: Colors.green);
  print(e);
}
}


sendOtp(){
  try {
       if(registerNameCtrl.text.isEmpty || registerNumberCtrl.text.isEmpty){
     Get.snackbar('Error', 'Please fill the fields',colorText: Colors.red); 
     //? to stop the code
     return;
    }
  final random = Random();
  int otp = 1000 + random.nextInt(9000);
  print(otp);
  //? will send otp and check its send sucessfully or not
  if(otp != null){
    otpFieldShown = true;
    otpSend = otp;
    Get.snackbar('Success', 'Otp send successfully',colorText: Colors.green);
  }else{
    Get.snackbar('Error', 'Otp not send !!',colorText: Colors.red);
  }
  } catch (e){
    print(e);
  }finally{
    update();
  }

}

}