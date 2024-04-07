import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_first_app/controller/grower_sell_home_controller.dart';
import 'package:my_first_app/screens/seller_description_page.dart';
import 'package:my_first_app/widgets/drop_down.dart';
import 'package:my_first_app/widgets/seller_card.dart';

class GrowerSellHome extends StatelessWidget {
  const GrowerSellHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GrowerSellHomeController>(builder: (ctrl){
    return Scaffold(
      appBar: AppBar(
        title: Text('Betel Sellers', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ctrl.sellers.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(6),
                  child: Chip(label: Text('Dompe')),
                );
              }),
          ),
          
            
              DropDown(
                items: ['Dompe','Gampaha','Ganemulla','Delgoda'],
              selectedItemText: 'Location',
              onSelected: (selected){},
              ),
              
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                   childAspectRatio: 1.5,
                   crossAxisSpacing: 8,
                   mainAxisSpacing: 8
                ), 
                itemCount: ctrl.sellers.length,
                itemBuilder: (context, index){
                  return SellerCard(
                    name: ctrl.sellers[index].name ?? 'No name',
                    largePrice: ctrl.sellers[index].largeprice ?? 00,
                    location: ctrl.sellers[index].location ?? 'No name',
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SellerDescriptionPage()),
                      );
                    },
                  );
                }),
              )
            ],
          
        
      ),
    );
    }
    );
  }
}