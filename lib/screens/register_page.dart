import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/controller/login_controller.dart';
import 'package:my_first_app/widgets/otp_txt_field.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (ctrl){
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blueGrey[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Create Your Account !!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.phone,
              controller: ctrl.registerNameCtrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: const Icon(Icons.phone_android),
                labelText: 'Your Name',
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
                backgroundColor: Colors.green,
              ),
              child: Text( ctrl.otpFieldShown ? 'Register' : 'Send OTP'),
            ),
            TextButton(
              onPressed: () {
                
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
      );
    
    }
    );
  }
}