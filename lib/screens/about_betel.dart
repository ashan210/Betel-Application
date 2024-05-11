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
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () => Navigator.of(context).pop(),
          ),
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
               const Row(
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
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Piper betle L.",
                        style: TextStyle(color: Colors.grey, 
                        fontSize: 18, 
                        fontWeight: FontWeight.w600),
                        ),
                  ],
               ),
               const Row(
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
               const Row(
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
                  const Row(
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
               const Row(
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
                const Row(
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
               const Row(
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
               const Row(
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
                const SizedBox(
                height: 20,
               ),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Field Planting",
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Image.asset("assets/aboutbetel1.png", height: 140,width: 220, scale: 1,),
                    
                    ],
                    
                ),
                const SizedBox(
                height: 20,
               ),
               const Text("Betel is usually planted in sunken beds. The field should be flat, well drained and with good sun shine. The field should not have a betel cultivation infected with Bacterial Leaf Blight at least for 2 years. After the land preparation, beds, usually in the size of 1.2mx7.5m, are prepared. Bed size can vary with the space available. Adequate spacing should be left between beds to allow management practices and to control the spread of disease.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),
                const SizedBox(
                height: 20,
               ),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Crop Management",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Fertilizer Application",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("Betel leaves are picked once in every 3-4 weeks and with that substantial quantity of nutrient is removed from the field. Therefore application of chemical fertilizer is essential for higher yield and better growth.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),
                const SizedBox(
                height: 20,
               ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Fertilizer recommendation",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("Urea                                            195g\nTriple Super phosphate               65g\nMuriate of Potash                       100g\nKeserite                                        60g\n420g of above mixture should be applied to 100 betel vines in every three weeks intervals.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),
                const SizedBox(
                height: 20,
               ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Organic fertilizer",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("Initially cow dung or compost should be applied to the bed after about one month and it should be mixed well with soil without damaging to the newly planted cuttings. Well composed poultry manure or goat manure can also be used for betel. Application of decomposed Glyricidia leaves is highly beneficial for better growth and higher yield.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),
                const SizedBox(
                height: 20,
               ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Pruning and Training",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("It is generally trained either to live supports or dead supports but concrete post or coir ropes can also be used as substitutes.\nPruning at 1m height of the betel vine is preferred to increase the plageotropic branches and yield.\nAfter 1.2 m growth of the betel vine Trellis is established.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),
                const SizedBox(
                height: 20,
               ),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Crop Protection",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Diseases",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Bacterial Leaf Blight (Oil Disease)",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 20,
               ),
               
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Image.asset("assets/beteldis1.png", height: 140,width: 220, scale: 1,),
                    
                    ],
                    
                    
                ),
                const SizedBox(
                height: 20,
               ),
               const Text("Betel leaf blight is caused by bacteria, called Xanthomonas campestris betlicola. Disease becomes epidemic during rainy seasons. First characteristic symptom is moist oily patches on underneath of leaves. Gradually they spread and turn into brown or black in colour. When the condition is serious these patches can spread to the stem resulting of shedding leaves and nodes. Consequently the plant will die but the disease can easily spread into surrounding vines.  No control measure has been identified other than destruction of seriously diseased plants.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),
                const SizedBox(
                height: 20,
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Image.asset("assets/beteldis3.png", height: 140,width: 220, scale: 1,),
                    
                    ],
                    
                    
                ),
                const SizedBox(
                height: 20,
               ),
                const Text("Diseased plants and nearby plants should be burned on the spot. A fungicide can be applied to control the spread. All matured leaves of remaining vines should be removed and a fungicide should be sprayed once or twice to betel vines. The spread of disease can be controlled by lowering the application of chemical fertilizer and water for infected betel plots. Use of disease free planting material, use of an agro well or an isolated water source for irrigation and adhering to strict hygienic practices are important ways to avoid contamination.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),
                const SizedBox(
                height: 20,
               ),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Pests",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("No economically important pest problems are reported but insect damages by suck sapping insects and damage s of red mites to betel leaves are commonly found in betel cultivations.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),
                const SizedBox(
                height: 20,
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Image.asset("assets/betelpests1.png", height: 180,width: 280, scale: 1,),
                    
                    ],
                    
                    
                ),
                const SizedBox(
                height: 20,
               ),
               const Text("Damaging insect is Dispinctus politus. Good cultural practices help to control the insect damage.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400, fontSize: 15),
                ),
                const SizedBox(
                height: 10,
               ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Image.asset("assets/betelpests2.png", height: 180,width: 280, scale: 1,),
                    
                    ],
                    
                    
                ),
                const SizedBox(
                height: 30,
               ),
                  ],
               ),
              
        ),
          ),
        
);

}
}