

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/controller/seller_hm_controller.dart';
import 'package:my_first_app/screens/add_listing.dart';


class SellerHome extends StatelessWidget {
  const SellerHome({super.key});

  @override
  Widget build(BuildContext context) {

     return GetBuilder<SellerHMController>(builder: (ctrl){
       
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
          title:  Text('Betel Sellers',
          style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 25, color: Colors.white),
          ),),
        body: ListView.builder(
          itemCount: ctrl.sellers.length,
          itemBuilder: (context,index){
           return  ListTile(title:  Text(ctrl.sellers[index].name ?? '',
           style: TextStyle(color: Colors.white, fontSize: 18),
           ),
           subtitle:  Text((ctrl.sellers[index].largeprice ?? 0).toString(),
           style: TextStyle(color: Colors.white),
           ),
           trailing: IconButton(
            icon: const Icon(Icons.business),
            onPressed: () {
              
              
            },
           ),
           );
          }),
          //floating button
          floatingActionButton: FloatingActionButton(
            onPressed: () {
             Get.to(const AddListing());
           },
           backgroundColor: Color.fromARGB(255, 2, 32, 1),
           child: const Icon(Icons.add),),
       );
     }
    );
  }

}
