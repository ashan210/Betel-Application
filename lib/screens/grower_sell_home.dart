import 'package:flutter/cupertino.dart';
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
    return RefreshIndicator(
      onRefresh: () async{ 
        ctrl.fetchSellers();
       },
      child: Scaffold(
        backgroundColor:const Color.fromARGB(255, 1, 86, 6),
        appBar: AppBar(
          backgroundColor:const Color.fromARGB(255, 2, 32, 1),
          shadowColor: Colors.white, 
          title: Text('Betel Sellers', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25, color: Colors.white),),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
              
              child: ListView.builder(
                
                scrollDirection: Axis.horizontal,
                itemCount: ctrl.sellerCitys.length,
                itemBuilder: (context, index){
                  return InkWell(
                    splashColor: Color.fromARGB(255, 2, 32, 1),
                    onTap: (){
                      ctrl.filterByCity(ctrl.sellerCitys[index].name ?? '');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      
                      child: Chip(label: Text(ctrl.sellerCitys[index].name ?? 'Error')),
                      
                    ),
                    
                  );
                  
                }),
            ),
            
              
                DropDown(
                  items: ['Low to High','High to Low'],
                selectedItemText: 'Sort Price',
                
                onSelected: (selected){
                  ctrl.sortByPrice(ascending: selected == 'Low to High' ? true : false);
                },
                ),      
                
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                     childAspectRatio: 1.5,
                     crossAxisSpacing: 8,
                     mainAxisSpacing: 8
                  ), 
                  itemCount: ctrl.sellerShowInUI.length,
                  itemBuilder: (context, index){
                    return SellerCard(
                      name: ctrl.sellerShowInUI[index].name ?? 'No name',
                      largePrice: ctrl.sellerShowInUI[index].largeprice ?? 00,
                      location: ctrl.sellerShowInUI[index].location ?? 'No name',
                      onTap: (){
                       Get.to(SellerDescriptionPage(),arguments: {'data':ctrl.sellerShowInUI[index]});
                      },
                    );
                  }),
                )
              ],
            
          
        ),
      ),
    );
    }
    );
  }
}