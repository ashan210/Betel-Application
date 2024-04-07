import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/screens/grower_sell_home.dart';






class GrowerScreen extends StatelessWidget {
  const GrowerScreen({super.key});

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
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu, color: Colors.white, size: 30,),
            ),
          ],
        ),

        body:  SingleChildScrollView(
          child: Padding(
            padding:const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   const Text(
                    "WELCOME !!!",
                  style: TextStyle(color: Colors.white,
                   fontSize: 20,
                    fontWeight: FontWeight.w600),
                                   
                 ),

                 const SizedBox(
                height: 25,
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
                      onTap: (){},
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
          
                //AI section
                
                const Text("                     CHECK WITH AI",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 169, 239, 166),
                fontWeight: FontWeight.w800, fontSize: 20),
                ),

                const SizedBox(
                  height: 10,
                ),

                 //AI lang buttons
                Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding:const EdgeInsets.all(5),
                            
                            
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
                        const SizedBox(width: 10),
                        
                        
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding:const EdgeInsets.all(5),
                            
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
                        const SizedBox(width: 10),
                        
                        
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding:const EdgeInsets.all(5),
                            
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
                  height: 10,
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

                const Text("                              SELL",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 169, 239, 166),
                fontWeight: FontWeight.w800, fontSize: 20),
                ),

                

                const SizedBox(
                  height: 10,
                ),

                Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding:const EdgeInsets.all(5),
                            
                            
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
                        const SizedBox(width: 10),
                        
                        
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding:const EdgeInsets.all(5),
                            
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
                        const SizedBox(width: 10),
                        
                        
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding:const EdgeInsets.all(5),
                            
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
                  height: 10,
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
                  height: 10,
                ),

                //BID LANG BUTTONS
                Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding:const EdgeInsets.all(5),
                            
                            
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
                        const SizedBox(width: 10),
                        
                        
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding:const EdgeInsets.all(5),
                            
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
                        const SizedBox(width: 10),
                        
                        
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding:const EdgeInsets.all(5),
                            
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
                  height: 10,
                ),

                //BID long text
                const Text("After utilizing the bid option and harvesting your crop, simply upload photos of your harvest. Betel merchants using our app will then submit their price offers for your crop. You have the flexibility to sell to the highest bidder, ensuring you get the best value for your harvest. Streamline your selling process and maximize your profits with ease.",
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

             //footer
             
              Container(
                height: 2,
                width: 500,
                decoration: const BoxDecoration(color: Color.fromARGB(255, 2, 32, 1)),
              ),
              const SizedBox(
              height: 10,
             ),
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

