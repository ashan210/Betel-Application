import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

String? selectedValue;

class DropDown extends StatelessWidget {
  final List<String> items;
  final String selectedItemText;
  final Function(String?) onSelected;

  const DropDown({
    Key? key,
    required this.items,
    required this.selectedItemText,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: DropdownButtonHideUnderline(
          child: Container(
            height: 40,
            width: 410,
            decoration: BoxDecoration(
              
              color: Color.fromARGB(255, 3, 38, 2), // Set background color of the dropdown button to green
              borderRadius: BorderRadius.circular(8.0),
              // Optional: Add border radius for button
            ),
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: Center(
                child: Text(
                  selectedItemText,
                  style: TextStyle(
                    
                    fontSize: 14,
                    color: Colors.white,
                    
                  ),
                ),
              ),
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                );
              }).toList(),
              value: selectedValue,
              onChanged: (String? value) {
                onSelected(value);
              },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 40,
                width: 140,
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}