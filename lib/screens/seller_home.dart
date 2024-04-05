

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
         backgroundColor: Colors.white,
        appBar: AppBar(title:  Text('Betel Sellers'),),
        body: ListView.builder(
          itemCount: ctrl.sellers.length,
          itemBuilder: (context,index){
           return  ListTile(title:  Text(ctrl.sellers[index].name ?? ''),
           subtitle:  Text((ctrl.sellers[index].largeprice ?? 0).toString()),
           trailing: IconButton(
            icon: const Icon(Icons.delete),
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
           child: const Icon(Icons.add),),
       );
     }
    );
  }

}
