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
        color:  const Color.fromARGB(255, 2, 32, 1),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 9),
              Text(name,
              style: const TextStyle(color: Colors.white, fontSize: 16),
              overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 9),
              Text('Rs : $largePrice',
              style: const TextStyle(color: Colors.white, fontSize: 16),
              overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 9),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  location,
                  style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
             
            ],
          ),
        ),
      ),
      
    );
  }
}