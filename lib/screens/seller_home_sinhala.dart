import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_first_app/screens/ImageProcessingPage.dart';

import 'package:my_first_app/screens/about_betel_sinhala.dart';
import 'package:my_first_app/screens/home_screen.dart';
import 'package:my_first_app/screens/login_page.dart';

import 'package:my_first_app/screens/seller_home.dart';
import 'package:my_first_app/screens/seller_home_tamil.dart';




class SellerHomeSinhala extends StatelessWidget {
  const SellerHomeSinhala({super.key});

 
  @override
  Widget build(BuildContext context) {
   
       
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
              Get.offAll(const LoginPage());
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
                        child: const Text("රෝග විනිශ්චය",
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
                        child: const Text( "බුලත් මිලදී ගන්න",
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
                            
                          },
                          child: Container(
                            padding:const EdgeInsets.all(10),
                            
                            
                            decoration: 
                            BoxDecoration(borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 2, 32, 1),
                            ),
                            child: const Text("සිංහල",
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
                            child: const Text("දෙමළ",
                            style: TextStyle(color: Colors.white, 
                            fontSize: 10, 
                            fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(width: 70),
                        
                        
                        GestureDetector(
                          onTap: (){
                           Get.to(const HomeScreen());
                          },
                          child: Container(
                            padding:const EdgeInsets.all(10),
                            
                            decoration: 
                            BoxDecoration(borderRadius: BorderRadius.circular(10), 
                            color: const Color.fromARGB(255, 2, 32, 1),
                            ),
                            child: const Text("ඉංග්‍රීසි",
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
                
                const Text("                     රෝග විනිශ්චය",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 169, 239, 166),
                fontWeight: FontWeight.w800, fontSize: 20),
                ),

                const SizedBox(
                  height: 20,
                ),

                

            

                //AI text
                const Text("බුලත් වගාව සැලකිය යුතු අභියෝගවලට මුහුණ දෙයි, මූලික වශයෙන් තෙල් සලකුණු රෝගය වැනි රෝග නිසා මුළු මිදි වතු ඉක්මනින් විනාශ කළ හැකිය. තෙල් සලකුණු රෝගය බොහෝ විට වෙනත් රෝගවලින් වෙන්කර හඳුනාගත නොහැකි බැවින් මෙම තර්ජනය හඳුනා ගැනීම ඉතා වැදගත් වේ. අපගේ යෙදුම සමඟ, ඕනෑම සැක සහිත බුලත් කොළයක ඡායාරූපයක් ගෙන, අපගේ AI හට එය විශ්ලේෂණය කිරීමට ඉඩ දෙන්න. එය සෞඛ්‍ය සම්පන්න පත්‍රයක් හෝ තෙල් සලකුණු රෝගයකින් හෝ වෙනත් පීඩාවකින් පීඩා විඳින්නේ නම්, අපගේ මෙවලම නිවැරදි හඳුනාගැනීමක් ලබා දෙයි, නියමිත වේලාවට පියවර ගැනීමට සහ ඔවුන්ගේ බෝග ආරක්ෂා කිරීමට ගොවීන් බල ගන්වයි.",
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

                const Text("                      බුලත් මිලදී ගන්න",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 169, 239, 166),
                fontWeight: FontWeight.w800, fontSize: 20),
                ),

                

                

                

                     const SizedBox(
                  height: 20,
                ),

                     const Text("ඔබේ බුලත් අස්වැන්න සඳහා සාධාරණ මිලක් ලබා දෙන ගැනුම්කරුවන් සොයා ගැනීම අභියෝගාත්මක විය හැකිය. මෙම ක්‍රියාවලිය සරල කිරීම සඳහා, අපි සියලු බුලත් වෙළෙන්දන් එක් පහසු වේදිකාවක් තුළ මධ්‍යගත කර ඇත. 'විකුණන්න' කොටසට පැමිණ, ඔබේ ප්‍රදේශය තෝරා, දේශීය බුලත් ගැනුම්කරුවන් සමඟ සම්බන්ධ වන්න. ඔබේ බුලත් අස්වැන්න තරඟකාරී මිලට විකිණීමෙන් ඔබේ ලාභය උපරිම කර ගන්න. අදම ආරම්භ කර ඔබේ විකුණුම් අත්දැකීම පහසුවෙන් සරල කර ගන්න.",
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
                        Get.to( const AboutBetelSinhala());
                      },
                      child: Container(
                        padding:const EdgeInsets.all(15),
                        
                        decoration: 
                        BoxDecoration(borderRadius: BorderRadius.circular(13),
                        color: const Color.fromARGB(255, 2, 32, 1),
                        ),
                        child: const Text("බුලත් වගාව පිළිබඳ",
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

               //footer
              const Text(
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




              