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
      appBar: AppBar(title: const Text('Add Listing'),),
      body:  SingleChildScrollView(
        child: Container(
          margin:  const EdgeInsets.all(10),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Add Your Details',style: TextStyle(fontSize: 30,color: Colors.indigoAccent, fontWeight: FontWeight.bold),),
              TextField(
                controller: ctrl.sellerNameCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Seller Name'),
                  hintText: 'Enter Your Name'
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl.sellerDescriptionCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: const Text('Listing Description'),
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
                  label: const Text('Location'),
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
                  label: const Text('Contact Number'),
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
                  label: const Text('Large Price'),
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
                  label: const Text('Medium Price'),
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
                  label: const Text('Small Price'),
                  hintText: 'Price Of Buying 1000 SMALL Size Betel Leaves'
                ),
              ),
              const SizedBox(height: 10),
              const Text('Enter The Nearest City'),
             DropDown(items: const ['Dompe','Pugoda','Delgoda','Gampaha'], selectedItemText: ctrl.city, onSelected: (selectedValue){
              ctrl.city = selectedValue ?? 'city';
              ctrl.update();
              },),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent
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