import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_first_app/screens/grower_screen.dart';
import 'package:my_first_app/screens/grower_screen_tamil.dart';
import 'package:my_first_app/screens/grower_sell_home.dart';
import 'package:my_first_app/screens/login_page.dart';






class GrowerScreenSinhala extends StatelessWidget {
  const GrowerScreenSinhala({super.key});

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
          title:const Text("MY BETEL APP" ,
          style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 25, color: Colors.white),
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
                   //const Text(
                    //"WELCOME !!!",
                  //style: TextStyle(color: Colors.white,
                   //fontSize: 20,
                    //fontWeight: FontWeight.w600),
                                   
                 //),

                 const SizedBox(
                height: 20,
               ),

                 //3buttons
                 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap:() {
                        Get.to(const GrowerSellHome());
                      },
                      child: Container(
                        padding:const EdgeInsets.all(15),
                        
                        decoration: 
                        BoxDecoration(borderRadius: BorderRadius.circular(13),
                        color: const Color.fromARGB(255, 2, 32, 1),
                        ),
                        child: const Text("SELL",
                        style: TextStyle(color: Colors.white, 
                        fontSize: 18, 
                        fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                       
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
                      onTap: (){},
                      child: Container(
                        padding:const EdgeInsets.all(15),
                        
                        decoration: 
                        BoxDecoration(borderRadius: BorderRadius.circular(13), 
                        color: const Color.fromARGB(255, 2, 32, 1),
                        ),
                        child: const Text(" BID ",
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
                          onTap: (){},
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
                            Get.to(const GrowerScreenTamil());
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
                            Get.to(const GrowerScreen());
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

                const Text("                              SELL",
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
                  height: 70,
                ),

                //bid section
              Container(
                height: 2,
                width: 500,
                decoration: const BoxDecoration(color: Color.fromARGB(255, 2, 32, 1)),
              ),

              const SizedBox(
                  height: 80,
                ),

                //BID text
                const Text("                               BID",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 169, 239, 166),
                fontWeight: FontWeight.w800, fontSize: 20),
                ),

                

                const SizedBox(
                  height: 20,
                ),

                


                //BID long text
                const Text("ලංසු විකල්පය භාවිතා කර ඔබේ අස්වැන්න නෙලීමෙන් පසු, ඔබේ අස්වැන්නේ ඡායාරූප උඩුගත කරන්න. අපගේ යෙදුම භාවිතා කරන බුලත් වෙළෙන්දෝ ඔබේ බෝගය සඳහා ඔවුන්ගේ මිල දීමනා ඉදිරිපත් කරනු ඇත. ඔබේ අස්වැන්න සඳහා හොඳම වටිනාකම ඔබට ලැබෙන බව සහතික කරමින්, ඉහළම ලංසුකරුට විකිණීමට ඔබට නම්‍යශීලී බවක් ඇත. ඔබේ විකුණුම් ක්‍රියාවලිය විධිමත් කර පහසුවෙන් ඔබේ ලාභය උපරිම කර ගන්න.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),

                //BID img
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Image.asset("assets/BETEL12.png", height: 140,width: 220, scale: 1,),
                    
                    ],
                    
                ),


              const SizedBox(
                  height: 80,
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
                      onTap:() {
                        
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

               //footer
              const Text(
                "MY BETEL APP",
                style: TextStyle(color: Color.fromARGB(255, 169, 239, 166),
                fontSize: 20,
                fontWeight: FontWeight.w800),
                ),
              
               const SizedBox(
                height: 5,
               ),

                const Text(
                  "the final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publicatin publishing and graphic design, Lorem ipsum is a placeholder text commonl",
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

