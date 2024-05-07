import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:my_first_app/model/seller/seller.dart';


class SellerDescriptionPage extends StatelessWidget {
  const SellerDescriptionPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    Seller seller = Get.arguments['data'];
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 1, 86, 6),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 2, 32, 1),
        shadowColor: Colors.white,
        centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () => Navigator.of(context).pop(),
          ),
        title: const Text('Seller Details', style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 25, color: Colors.white)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 50, 0, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Name :',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
            ),
            
            Text(seller.name ?? '',
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
            const SizedBox(height: 20),
            Text('Description :',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
            
            ),
            Text(seller.description ?? '',
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
            const SizedBox(height: 20),
            Text('Contact Number :',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
            ),
            Text(seller.contactnumbertwo ?? '',
              style: TextStyle(
                fontSize: 28,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 20),
            Text('Large Betel Price :',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
            ),
            Text(
              'Rs: ${seller.largeprice ?? ''}',
              style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
            const SizedBox(height: 20),
            Text('Medium Betel Price :',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
            ),
            Text(
              'Rs: ${seller.mediumprice ?? ''}',
              style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
            const SizedBox(height: 20),
            Text('Small Betel Price :',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
            ),
            Text(
              'Rs ${seller.smallprice ?? ''}',
              style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
            const SizedBox(height: 20),
            Text('Location :',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
            ),
            Text(
              seller.location ?? '',
              style: TextStyle(
                fontSize: 28,
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}