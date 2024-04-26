import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/controller/seller_hm_controller.dart';
import 'package:my_first_app/widgets/drop_down.dart';


class AddListing extends StatelessWidget {
  const AddListing({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SellerHMController>(builder: (ctrl){
    return  Scaffold(
      backgroundColor:const Color.fromARGB(255, 1, 86, 6),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 2, 32, 1),
          shadowColor: Colors.white,
        title: const Text('Add Listing',
        style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 25, color: Colors.white),
        ),),
      body:  SingleChildScrollView(
        child: Container(
          margin:  const EdgeInsets.all(10),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Add Your Details',style: TextStyle(fontSize: 30,color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              TextField(
                controller: ctrl.sellerNameCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Seller Name',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Enter Your Name',
                  
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl.sellerDescriptionCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Listing Description',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Enter Specific Information About Your Purchase'
               ),
                maxLines: 4,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl.sellerLocation,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Location',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Provide The Location Where You Make Purchases'
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl.sellerContactNumber,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Contact Number',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Add your Contact Number'
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl.sellerLargePrice,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Large Price',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Price Of Buying 1000 LARGE Size Betel Leaves'
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl.sellerMediumPrice,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Medium Price',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Price Of Buying 1000 MEDIUM Size Betel Leaves'
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl.sellerSmallPrice,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Small Price',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Price Of Buying 1000 SMALL Size Betel Leaves'
                ),
              ),
              const SizedBox(height: 10),
              const Text('Enter The Nearest City',
              style: TextStyle(color: Colors.white, fontSize: 17),
              ),
             DropDown(items: const ['Dompe','Pugoda','Delgoda','Gampaha'], selectedItemText: ctrl.city, onSelected: (selectedValue){
              ctrl.city = selectedValue ?? 'city';
              ctrl.update();
              },),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 2, 32, 1),
                ),
                onPressed: (){
                  ctrl.addSeller();
                }, child: const Text('Add Listing'))
            ],
          ),
        ),
      ),
    );
    
    
    }
    );
  }
  
}