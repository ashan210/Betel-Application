import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/controller/login_controller.dart';

import 'package:my_first_app/screens/register_page.dart';

class GrowerORSellerPage extends StatelessWidget {
  const GrowerORSellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (ctrl) {
      return Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.blueGrey[50]!.withOpacity(0.8),// Adjust transparency as needed
            image: DecorationImage(
              image: AssetImage("assets/bg3.png"), // Replace with your image path (inside assets folder)
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Are You a',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color:  Color.fromARGB(255, 2, 32, 1),
                ),
              ),
              
              
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.to(RegisterPage());
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 2, 32, 1),
                    ),
                    child: const Text('Betel Grower',
                    style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Text("OR",
                        style: TextStyle(color: Colors.black, 
                        fontSize: 18, 
                        fontWeight: FontWeight.w600),
                        ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(RegisterPage());
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 2, 32, 1),
                    ),
                    child: const Text('Betel Seller',
                    style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
                Text('(Select Your Profession)',
                style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 1, 86, 6), fontWeight: FontWeight.w800),
                ),
            ],
          ),
        ),
      );
    });
  }
}