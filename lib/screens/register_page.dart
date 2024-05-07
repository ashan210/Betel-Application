import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/controller/login_controller.dart';
import 'package:my_first_app/screens/login_page.dart';
import 'package:my_first_app/widgets/otp_txt_field.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (ctrl){
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.blueGrey[50]!.withOpacity(0.8),
          image: DecorationImage(
            image: AssetImage("assets/canva5.png"),
            fit: BoxFit.cover,
            ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Create Your Account !!',
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color:  Color.fromARGB(255, 2, 32, 1),
                ),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.text,
              controller: ctrl.registerNameCtrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: const Icon(Icons.phone_android),
                labelText: 'Your Name',
                labelStyle: TextStyle(fontSize: 17, fontWeight:FontWeight.w500),
                hintText: 'Enter Your Name',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: ctrl.registerNumberCtrl,
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
            OtpTextField(otpController: ctrl.otpController, 
            visible: ctrl.otpFieldShown, 
            onComplete: (otp) { 
              ctrl.otpEnter = int.tryParse(otp ?? '0000');
             },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if(ctrl.otpFieldShown){
                  ctrl.addUser();
                }else{
                  ctrl.sendOtp();
                }
                
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color.fromARGB(255, 2, 32, 1),
              ),
              child: Text( ctrl.otpFieldShown ? 'Register' : 'Send OTP',
              style: TextStyle(fontSize: 17),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(const LoginPage());
              },
              child: const Text('Login',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 1, 86, 6), fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
      ),
      );
    
    }
    );
  }
}