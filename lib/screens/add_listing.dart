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
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () => Navigator.of(context).pop(),
          ),
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
              const SizedBox(height: 10,),
              TextField(
                controller: ctrl.sellerNameCtrl,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Seller Name',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Enter Your Name',
                  hintStyle: const TextStyle(color: Colors.white,),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl.sellerDescriptionCtrl,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Listing Description',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Enter Specific Information About Your Purchase',
                  hintStyle: const TextStyle(color: Colors.white,),
               ),
                maxLines: 4,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl.sellerLocation,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Location',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Provide The Location Where You Make Purchases',
                  hintStyle: const TextStyle(color: Colors.white,),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl.sellerContactNumberTwo,
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Contact Number',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Add your Contact Number',
                  hintStyle: const TextStyle(color: Colors.white,),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl.sellerLargePrice,
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Large Price',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Price Of Buying 1000 LARGE Size Betel Leaves',
                  hintStyle: const TextStyle(color: Colors.white,),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl.sellerMediumPrice,
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Medium Price',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Price Of Buying 1000 MEDIUM Size Betel Leaves',
                  hintStyle: const TextStyle(color: Colors.white,),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl.sellerSmallPrice,
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Small Price',
                  style: TextStyle(color: Colors.white,),
                  ),
                  hintText: 'Price Of Buying 1000 SMALL Size Betel Leaves',
                  hintStyle: const TextStyle(color: Colors.white,),
                ),
              ),
              const SizedBox(height: 10),
              const Text('Enter The Nearest City',
              style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              
              DropDown(items: const ['Ampara','Anuradhapura','Badulla','Gampaha','Batticaloa','Colombo','Galle','Hambantota','Jaffna','Kaluthara','Kurunegala','Mannar','Mathale','Mathara','Monaragala','Mulathivu','NuwaraEliya','Polonnaruwa','Puttalam','Ratnapura','Trincomalee','Vavuniya'], selectedItemText: ctrl.city, onSelected: (selectedValue){
              ctrl.city = selectedValue ?? 'city';
              ctrl.update();
              },),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 3, 38, 2),
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