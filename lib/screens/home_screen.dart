import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_first_app/screens/ImageProcessingPage.dart';
import 'package:my_first_app/screens/about_betel.dart';
import 'package:my_first_app/screens/login_page.dart';

import 'package:my_first_app/screens/seller_home.dart';
import 'package:my_first_app/screens/seller_home_sinhala.dart';
import 'package:my_first_app/screens/seller_home_tamil.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //@override
  //State<HomeScreen> createState() => _HomeScreenState();
//}

//class _HomeScreenState extends State<HomeScreen> {
  //final _formHomeScreenKey = GlobalKey<FormState>();
  //bool agreePersonalData = true;
  //@override
  @override
  Widget build(BuildContext context) {
    //return MaterialApp(
      //debugShowCheckedModeBanner: false,
      //title: "betel app",
      
       //home: 
       
       return Scaffold(
         backgroundColor:const Color.fromARGB(255, 1, 86, 6),
        appBar: AppBar(
          backgroundColor:const Color.fromARGB(255, 2, 32, 1),
          shadowColor: Colors.white,
          centerTitle: true,
          title:const Text("Betel Guardian" ,
          style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 30, color: Colors.white),
          ),
          actions: [
            IconButton(onPressed: () {
              GetStorage box = GetStorage();
              box.erase();
              Get.offAll(LoginPage());
            }, icon: const Icon(Icons.logout, color: Colors.white, size: 30,),
            ),
          ],
        ),

        body:  SingleChildScrollView(
          child: Padding(
            padding:const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   

                 const SizedBox(
                height: 20,
               ),

                 //3buttons
                 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.to( ImageProcessingPage());
                        
                      },
                      child: Container(
                        padding:const EdgeInsets.all(15), 
                        
                        decoration: 
                        BoxDecoration(borderRadius: BorderRadius.circular(13),
                        color: const Color.fromARGB(255, 2, 32, 1),
                        ),
                        child: const Text("CHECK WITH AI",
                        style: TextStyle(color: Colors.white, 
                        fontSize: 18, 
                        fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(const SellerHome());
                      },
                      child: Container(
                        padding:const EdgeInsets.all(15),
                        
                        decoration: 
                        BoxDecoration(borderRadius: BorderRadius.circular(13),
                        color: const Color.fromARGB(255, 2, 32, 1),
                        ),
                        child: const Text(" ADD LISTING ",
                        style: TextStyle(color: Colors.white, 
                        fontSize: 18, 
                        fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    
                  ],
                 ),
                 
                
                 
          
               const SizedBox(
                height: 10,
               ),
          
          //display image
                Center(
                  child: Image.asset("assets/BETEL2.png",
                  height: 300,scale: 1,
                  ),
                ),

          
               const SizedBox(
                  height: 10,
                ),

                Container(
                height: 2,
                width: 500,
                decoration: const BoxDecoration(color: Color.fromARGB(255, 2, 32, 1)),
              ),

               const SizedBox(
                height: 50,
               ),

               Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.to(const SellerHomeSinhala());
                          },
                          child: Container(
                            padding:const EdgeInsets.all(10),
                            
                            
                            decoration: 
                            BoxDecoration(borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 2, 32, 1),
                            ),
                            child: const Text("SINHALA",
                            style: TextStyle(color: Colors.white, 
                            fontSize: 10, 
                            fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(width: 70),
                        
                        
                        GestureDetector(
                          onTap: (){
                            Get.to(const SellerHomeTamil());
                          },
                          child: Container(
                            padding:const EdgeInsets.all(10),
                            
                            decoration: 
                            BoxDecoration(borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 2, 32, 1),
                            ),
                            child: const Text("TAMIL",
                            style: TextStyle(color: Colors.white, 
                            fontSize: 10, 
                            fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(width: 70),
                        
                        
                        GestureDetector(
                          onTap: (){
                           Get.to(const SellerHomeTamil());
                          },
                          child: Container(
                            padding:const EdgeInsets.all(10),
                            
                            decoration: 
                            BoxDecoration(borderRadius: BorderRadius.circular(10), 
                            color: const Color.fromARGB(255, 2, 32, 1),
                            ),
                            child: const Text("ENGLISH",
                            style: TextStyle(color: Colors.white, 
                            fontSize: 10, 
                            fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                     ),

                

          
               const SizedBox(
                  height: 70,
                ),
          
                //AI section
                
                const Text("                     CHECK WITH AI",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 169, 239, 166),
                fontWeight: FontWeight.w800, fontSize: 20),
                ),

                const SizedBox(
                  height: 20,
                ),

                

            

                //AI text
                const Text("Betel cultivation faces significant challenges, primarily due to diseases like oil mark disease, which can swiftly devastate entire vineyards. Recognizing this threat is crucial, as oil mark disease is often indistinguishable from other ailments. With our app, simply snap a photo of any questionable betel leaf, and let our AI analyze it. Whether it's a healthy leaf or suffering from oil mark disease or other afflictions, our tool provides accurate identification, empowering farmers to take timely action and protect their crops",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),

                //AI img
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Image.asset("assets/BETEL5.png", height: 150,width: 100, scale: 1,),
                    
                    ],
                    
                ),
                
          
               const SizedBox(height: 100,
                ),

                //sell section
                Container(
                height: 2,
                width: 500,
                decoration: const BoxDecoration(color: Color.fromARGB(255, 2, 32, 1)),
              ),
               
               const SizedBox(height: 80,
                ),

                const Text("                         ADD LISTING",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 169, 239, 166),
                fontWeight: FontWeight.w800, fontSize: 20),
                ),

                

                

                

                     const SizedBox(
                  height: 20,
                ),

                     const Text("Finding buyers who offer fair prices for your betel harvest can be challenging. To simplify this process, we've centralized all betel merchants in one convenient platform. Visit the 'Sell' section, select your area, and connect with local betel buyers. Maximize your profits by selling your betel harvest at competitive prices. Start today and streamline your selling experience with ease.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),

                const SizedBox(
                  height: 0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Image.asset("assets/BETEL9.3.png", height: 230,width: 180, scale: 2,),
                    
                    ],
                    
                ),

                const SizedBox(
                  height: 50,
                ),

                //bid section
              

                
             
             
              Container(
                height: 2,
                width: 500,
                decoration: const BoxDecoration(color: Color.fromARGB(255, 2, 32, 1)),
              ),

              const SizedBox(
              height: 50,
             ),

             Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap:() {
                        Get.to( AboutBetel());
                      },
                      child: Container(
                        padding:const EdgeInsets.all(15),
                        
                        decoration: 
                        BoxDecoration(borderRadius: BorderRadius.circular(13),
                        color: const Color.fromARGB(255, 2, 32, 1),
                        ),
                        child: const Text("About Betel Cultivation",
                        style: TextStyle(color: Colors.white, 
                        fontSize: 18, 
                        fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
             ),

                const SizedBox(
              height: 50,
             ),

              Container(
                height: 2,
                width: 500,
                decoration: const BoxDecoration(color: Color.fromARGB(255, 2, 32, 1)),
              ),

                const SizedBox(
              height: 50,
             ),

               
                      Text(
                          "Developed by Ashan Hapangama",
                          style: TextStyle(color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300),
                        
                                             ),
                      

              ],
              
            ),
          ),
        ),
      );
    
  }
}