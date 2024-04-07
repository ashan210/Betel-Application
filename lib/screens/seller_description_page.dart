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
      appBar: AppBar(
        title: const Text('Seller Details', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(130, 50, 130, 130),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Name;'),
            Text(seller.name ?? '',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 20),
            Text('Description;'),
            Text(seller.description ?? '',
            style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            Text('Contact Number;'),
            Text(
              '${seller.contactnumber ?? ''}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text('Large Betel Price;'),
            Text(
              'Rs: ${seller.largeprice ?? ''}',
              style: TextStyle(
                fontSize: 20,
                
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text('Medium Betel Price;'),
            Text(
              'Rs: ${seller.mediumprice ?? ''}',
              style: TextStyle(
                fontSize: 20,
                
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text('Small Betel Price;'),
            Text(
              'Rs ${seller.smallprice ?? ''}',
              style: TextStyle(
                fontSize: 20,
                
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text('Location;'),
            Text(
              seller.location ?? '',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}