import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_first_app/model/user/user.dart';
import 'package:my_first_app/screens/grower_screen.dart';
import 'package:my_first_app/screens/home_screen.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';

class LoginController extends GetxController{


  GetStorage box = GetStorage();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference userCollection;

  TextEditingController registerNameCtrl = TextEditingController();
  TextEditingController registerNumberCtrl = TextEditingController();

  TextEditingController loginNumberCtrl = TextEditingController();

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
   if(otpSend == otpEnter){
       DocumentReference doc = userCollection.doc();
  User user = User(
    id:doc.id,
    name: registerNameCtrl.text,
    number: int.parse(registerNumberCtrl.text),
    

  );
  final userJson = user.toJson();
  doc.set(userJson);
  Get.snackbar('Success', 'User added successfully',colorText: Colors.green);
  registerNumberCtrl.clear();
  registerNameCtrl.clear();
  otpController.clear();
   }else{
    Get.snackbar('Error', 'OTP is incorrect',colorText: Colors.red);
   }

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

Future<void> loginWithPhone() async {
  try {
    String phoneNumber = loginNumberCtrl.text;
    if (phoneNumber.isNotEmpty) {
      var querySnapshot = await userCollection.where('number', isEqualTo: int.tryParse(phoneNumber)).limit(1).get();
      if (querySnapshot.docs.isNotEmpty) {
        var userDoc = querySnapshot.docs.first;
        var userData = userDoc.data() as Map<String, dynamic>;
        box.write('loginUser', userData);
        loginNumberCtrl.clear();
        Get.to(GrowerScreen());
        Get.snackbar('Success', 'Login Successful', colorText: Colors.green);

      } else {
        Get.snackbar('Error', 'User not Found', colorText: Colors.red);
      }
    } else {
      Get.snackbar('Error', 'Please enter a phone number', colorText: Colors.red);
    }
  } catch (error) {
    print("Failed to login: $error");
    Get.snackbar('Error', 'Failed to login', colorText: Colors.red);
  }
}

Future<void> loginWithPhonetwo() async {
  try {
    String phoneNumber = loginNumberCtrl.text;
    if (phoneNumber.isNotEmpty) {
      var querySnapshot = await userCollection.where('number', isEqualTo: int.tryParse(phoneNumber)).limit(1).get();
      if (querySnapshot.docs.isNotEmpty) {
        var userDoc = querySnapshot.docs.first;
        var userData = userDoc.data() as Map<String, dynamic>;
        box.write('loginUser', userData);
        loginNumberCtrl.clear();
        Get.to(HomeScreen());
        Get.snackbar('Success', 'Login Successful', colorText: Colors.green);

      } else {
        Get.snackbar('Error', 'User not Found', colorText: Colors.red);
      }
    } else {
      Get.snackbar('Error', 'Please enter a phone number', colorText: Colors.red);
    }
  } catch (error) {
    print("Failed to login: $error");
    Get.snackbar('Error', 'Failed to login', colorText: Colors.red);
  }
}

}