
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/controller/grower_sell_home_controller.dart';
import 'package:my_first_app/controller/login_controller.dart';
import 'package:my_first_app/controller/seller_hm_controller.dart';
import 'package:my_first_app/screens/login_page.dart';
import 'package:my_first_app/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


Future<void> main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform);
    //? registering my controller
    Get.put(LoginController());
    Get.put(SellerHMController());
    Get.put(GrowerSellHomeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      home: const LoginPage(),  
    );
  }
}