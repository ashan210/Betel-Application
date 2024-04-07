import 'package:flutter/material.dart';

class SellerCard extends StatelessWidget {
  const SellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          Text('Name',
          style: TextStyle(fontSize: 16),
          overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 9),
          Text('Price',
          style: TextStyle(fontSize: 16),
          overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 9),
          Text('Location',
          style: TextStyle(fontSize: 16),
          overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}