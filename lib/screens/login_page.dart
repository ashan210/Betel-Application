import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/controller/login_controller.dart';
import 'package:my_first_app/screens/grower_or_seller.dart';

import 'package:my_first_app/screens/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (ctrl) {
      return Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.blueGrey[50]!.withOpacity(0.8),// Adjust transparency as needed
            image: DecorationImage(
              image: AssetImage("assets/canva4.png"), // Replace with your image path (inside assets folder)
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color:  Color.fromARGB(255, 2, 32, 1),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: ctrl.loginNumberCtrl,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    
                    
                  ),
                  prefixIcon: const Icon(Icons.phone_android),
                  labelText: 'Mobile Number',
                  labelStyle: TextStyle(fontSize: 17, fontWeight:FontWeight.w500),
                  hintText: 'Enter Your Mobile Number',
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ctrl.loginWithPhone();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 2, 32, 1),
                    ),
                    child: const Text('Grower Login',
                    style: TextStyle(fontSize: 17),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ctrl.loginWithPhonetwo();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 2, 32, 1),
                    ),
                    child: const Text('Seller Login',
                    style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Get.to(GrowerORSellerPage());
                },
                child: const Text('Register New Account',
                style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 1, 86, 6), fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}