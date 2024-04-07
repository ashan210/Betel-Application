import 'package:flutter/material.dart';

class SellerCard extends StatelessWidget {
  final String name;
  final double largePrice;
  final String location;
  final Function onTap;
  const SellerCard({super.key, 
  required this.name, 
  required this.largePrice, 
  required this.location, 
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 9),
              Text(name,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 9),
              Text('Rs : $largePrice',
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 9),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  location,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}