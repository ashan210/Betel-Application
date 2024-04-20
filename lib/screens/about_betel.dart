import 'package:flutter/material.dart';

class AboutBetel extends StatelessWidget {
  const AboutBetel({super.key});

@override
  Widget build(BuildContext context) {
return Scaffold(
         backgroundColor:const Color.fromARGB(255, 1, 86, 6),
        appBar: AppBar(
          backgroundColor:const Color.fromARGB(255, 2, 32, 1),
          shadowColor: Colors.white,
          title:const Text("ABOUT BETEL CULTIVATION" ,
          style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 25, color: Colors.white),
          ),
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
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("BETEL",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 24, 
                        fontWeight: FontWeight.w600),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Piper betle L.",
                        style: TextStyle(color: Colors.grey, 
                        fontSize: 18, 
                        fontWeight: FontWeight.w600),
                        ),
                  ],
               ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Family: Piperacea",
                        style: TextStyle(color: Colors.grey, 
                        fontSize: 18, 
                        fontWeight: FontWeight.w600),
                        ),
                  ],
               ),
               const SizedBox(
                height: 20,
               ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Major Growing Areas",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               
                  const Text("Betel is grown in all over the country but the commercial production of export quality betel, with bigger leaves with dark green colour combined with thickness, known as “Kalu bulath” is significantly confined to few districts such as Kurunagala, Gampaha, Kegalle, Kalutara and Colombo.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),

                const SizedBox(
                height: 20,
               ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Soils and Climatic Requirements",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
                    const SizedBox(
                height: 10,
               ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Soil",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("Betel can be successfully grown in well-drained, fertile soils in wet to dry climatic zone of Sri Lanka. Especially the lataritic and clay loam soils in Kurunagala and Gampaha districts are highly suitable for betel cultivation. Waterlogged, saline or alkali soils are not suitable for the growth of betel.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),
                const SizedBox(
                height: 20,
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Climate",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("Well-distributed annual rainfall enhances the growth of betel vines.\nBetel is a sun loving plant but produces better quality leaves in the wet zone and intermediate zones rather than in the dry zone. Appropriable shade levels and irrigation are essential for successful cultivation of the crop. Hot dry winds are harmful and retard the growth of the vine.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),
                const SizedBox(
                height: 20,
               ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Crop Establishment",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Planting material",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
                const SizedBox(
                height: 10,
               ),
               const Text("Betel is usually propagated by using stem cuttings. Cuttings should be healthy and taken from mother vines with high yielding and leaves are comparatively bigger and dark green in colour. Cuttings can directly be field planted or can be planted as rooted cuttings established in poly bags filled with a mixture of equal parts of top soil, cow dung, coir dust and sand.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),
                  ],
               ),
              
        ),
          ),
        
);

}
}