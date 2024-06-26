import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_first_app/screens/ImageProcessingPage.dart';

import 'package:my_first_app/screens/about_betel_tamil.dart';
import 'package:my_first_app/screens/grower_screen.dart';
import 'package:my_first_app/screens/grower_screen_sinhala.dart';
import 'package:my_first_app/screens/grower_sell_home.dart';
import 'package:my_first_app/screens/login_page.dart';






class GrowerScreenTamil extends StatelessWidget {
  const GrowerScreenTamil({super.key});

 
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
                      onTap:() {
                        Get.to( ImageProcessingPage());
                      },
                      child: Container(
                        padding:const EdgeInsets.all(15),
                        
                        decoration: 
                        BoxDecoration(borderRadius: BorderRadius.circular(13),
                        color: const Color.fromARGB(255, 2, 32, 1),
                        ),
                        child: const Text("நோய் நிர்ணம்",
                        style: TextStyle(color: Colors.white, 
                        fontSize: 18, 
                        fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(const GrowerSellHome());
                      },
                      child: Container(
                        padding:const EdgeInsets.all(15),
                        
                        decoration: 
                        BoxDecoration(borderRadius: BorderRadius.circular(13),
                        color: const Color.fromARGB(255, 2, 32, 1),
                        ),
                        child: const Text("புலத் வெதளே",
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
                            Get.to(const GrowerScreenSinhala());
                          },
                          child: Container(
                            padding:const EdgeInsets.all(10),
                            
                            
                            decoration: 
                            BoxDecoration(borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 2, 32, 1),
                            ),
                            child: const Text("சிங்கள",
                            style: TextStyle(color: Colors.white, 
                            fontSize: 10, 
                            fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(width: 70),
                        
                        
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding:const EdgeInsets.all(10),
                            
                            decoration: 
                            BoxDecoration(borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 2, 32, 1),
                            ),
                            child: const Text("தமிழ்",
                            style: TextStyle(color: Colors.white, 
                            fontSize: 10, 
                            fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(width: 70),
                        
                        
                        GestureDetector(
                          onTap: (){
                           Get.to(const GrowerScreen());
                          },
                          child: Container(
                            padding:const EdgeInsets.all(10),
                            
                            decoration: 
                            BoxDecoration(borderRadius: BorderRadius.circular(10), 
                            color: const Color.fromARGB(255, 2, 32, 1),
                            ),
                            child: const Text("ஆங்கிலம்",
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
                
                const Text("                     நோய் நிர்ணம்",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 169, 239, 166),
                fontWeight: FontWeight.w800, fontSize: 20),
                ),

                const SizedBox(
                  height: 20,
                ),

                 
                

               

                //AI text
                const Text("வெற்றிலை சாகுபடி குறிப்பிடத்தக்க சவால்களை எதிர்கொள்கிறது, முதன்மையாக எண்ணெய் குறி நோய் போன்ற நோய்களால், இது முழு திராட்சைத் தோட்டங்களையும் விரைவாக அழிக்கக்கூடும். இந்த அச்சுறுத்தலை அங்கீகரிப்பது மிகவும் முக்கியமானது, ஏனெனில் எண்ணெய் குறி நோய் பெரும்பாலும் மற்ற நோய்களிலிருந்து பிரித்தறிய முடியாதது. எங்கள் பயன்பாட்டின் மூலம், சந்தேகத்திற்குரிய வெற்றிலையின் புகைப்படத்தை எடுத்து, எங்கள் AI அதை பகுப்பாய்வு செய்யட்டும். இது ஆரோக்கியமான இலையாக இருந்தாலும் சரி அல்லது எண்ணெய் குறி நோய் அல்லது பிற துன்பங்களால் பாதிக்கப்பட்டிருந்தாலும் சரி, எங்கள் கருவி துல்லியமான அடையாளத்தை வழங்குகிறது, சரியான நேரத்தில் நடவடிக்கை எடுத்து பயிர்களைப் பாதுகாக்க விவசாயிகளுக்கு அதிகாரம் அளிக்கிறது.",
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

                const Text("                     புலத் வெதளே",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 169, 239, 166),
                fontWeight: FontWeight.w800, fontSize: 20),
                ),

                

                const SizedBox(
                  height: 20,
                ),

                

               

                     const Text("உங்கள் வெற்றிலை அறுவடைக்கு நியாயமான விலைகளை வழங்கும் வாங்குபவர்களைக் கண்டறிவது சவாலானதாக இருக்கலாம். இந்த செயல்முறையை எளிதாக்க, அனைத்து வெற்றிலை வியாபாரிகளையும் ஒரு வசதியான தளத்தில் மையப்படுத்தியுள்ளோம். 'விற்பனை' பகுதிக்குச் சென்று, உங்கள் பகுதியைத் தேர்ந்தெடுத்து, உள்ளூர் வெற்றிலை வாங்குபவர்களுடன் இணையுங்கள். உங்கள் வெற்றிலையை போட்டி விலையில் விற்பதன் மூலம் உங்கள் லாபத்தை அதிகப்படுத்துங்கள். இன்றே தொடங்கி உங்கள் விற்பனை அனுபவத்தை எளிதாக நெறிப்படுத்துங்கள்.",
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
                        Get.to( const AboutBetelTamil());
                      },
                      child: Container(
                        padding:const EdgeInsets.all(15),
                        
                        decoration: 
                        BoxDecoration(borderRadius: BorderRadius.circular(13),
                        color: const Color.fromARGB(255, 2, 32, 1),
                        ),
                        child: const Text("புலம் பயிர்வ பற்றிய",
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

