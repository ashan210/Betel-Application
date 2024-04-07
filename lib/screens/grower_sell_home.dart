import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_app/widgets/drop_down.dart';
import 'package:my_first_app/widgets/seller_card.dart';

class GrowerSellHome extends StatelessWidget {
  const GrowerSellHome({super.key});

  @override
  Widget build(BuildContext context) {
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
              itemCount: 10,
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
                   childAspectRatio: 0.8,
                   crossAxisSpacing: 8,
                   mainAxisSpacing: 8
                ), 
                itemCount: 10,
                itemBuilder: (context, index){
                  return SellerCard();
                }),
              )
            ],
          
        
      ),
    );
  }
}