import 'package:flutter/material.dart';

class AboutBetelTamil extends StatelessWidget {
   const AboutBetelTamil({super.key});

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
                    Text("முக்கிய வளரும் பகுதிகள்",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               
                  const Text("வெற்றிலை நாடு முழுவதிலும் பயிரிடப்படுகிறது, ஆனால் ஏற்றுமதித் தரம் வாய்ந்த வெற்றிலையின் வணிக உற்பத்தியானது, பெரிய இலைகளுடன் கூடிய அடர்ந்த பச்சை நிறத்துடன் கூடிய தடிமன் கொண்ட, 'களு புலாத்' என்று அழைக்கப்படும், குருநாகல், கம்பஹா, கேகாலை, களுத்துறை போன்ற சில மாவட்டங்களில் கணிசமாக மட்டுப்படுத்தப்பட்டுள்ளது. கொழும்பு.",
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
                    Text("மண் மற்றும் காலநிலை \n              தேவைகள்",
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
                    Text("மண்",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("வெற்றிலையை இலங்கையின் ஈரமான மற்றும் வறண்ட காலநிலை மண்டலத்தில் நன்கு வடிகட்டிய, வளமான மண்ணில் வெற்றிகரமாக வளர்க்கலாம். குறிப்பாக குருநாகல் மற்றும் கம்பஹா மாவட்டங்களில் உள்ள லேடாரிடிக் மற்றும் களிமண் களிமண் மண் வெற்றிலை சாகுபடிக்கு மிகவும் ஏற்றது. நீர் தேங்கியுள்ள, உப்பு அல்லது காரம் கலந்த மண் வெற்றிலையின் வளர்ச்சிக்கு ஏற்றதல்ல.",
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
                    Text("காலநிலை",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("நன்கு விநியோகிக்கப்படும் ஆண்டு மழைப்பொழிவு வெற்றிலை கொடிகளின் வளர்ச்சியை அதிகரிக்கிறது.\nவெற்றிலை ஒரு சூரியனை விரும்பும் தாவரமாகும், ஆனால் உலர்ந்த மண்டலத்தை விட ஈர மண்டலம் மற்றும் இடைநிலை மண்டலங்களில் சிறந்த தரமான இலைகளை உற்பத்தி செய்கிறது. பயிரின் வெற்றிகரமான சாகுபடிக்கு பொருத்தமான நிழல் நிலைகள் மற்றும் நீர்ப்பாசனம் அவசியம். சூடான வறண்ட காற்று தீங்கு விளைவிக்கும் மற்றும் கொடியின் வளர்ச்சியை தாமதப்படுத்துகிறது.",
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
                    Text("பயிர் நிறுவுதல்",
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
                    Text("நடவு பொருள்",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
                const SizedBox(
                height: 10,
               ),
               const Text("வெற்றிலை பொதுவாக தண்டு வெட்டல் மூலம் இனப்பெருக்கம் செய்யப்படுகிறது. வெட்டப்பட்டவை ஆரோக்கியமானதாகவும், அதிக மகசூல் தரக்கூடிய மற்றும் இலைகள் ஒப்பீட்டளவில் பெரியதாகவும், கரும் பச்சை நிறமாகவும் இருக்கும் தாய் கொடிகளிலிருந்து எடுக்கப்பட வேண்டும். வெட்டிகளை நேரடியாக வயலில் நடலாம் அல்லது மேல் மண், மாட்டுச் சாணம், தென்னை நார்த் தூள் மற்றும் மணல் ஆகியவற்றின் சம பாகங்களைக் கொண்டு நிரப்பப்பட்ட பாலி பைகளில் வேரூன்றி வெட்டப்பட்ட துண்டுகளாக நடலாம்.",
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
                    Text("வயல் நடவு",
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
               const Text("வெற்றிலை பொதுவாக மூழ்கிய பாத்திகளில் நடப்படுகிறது. வயல் சமதளமாகவும், நல்ல வடிகால் வசதியுடனும், நல்ல சூரிய ஒளியுடன் இருக்க வேண்டும். வயலில் குறைந்தது 2 ஆண்டுகளுக்கு பாக்டீரியா இலை கருகல் நோய் தாக்கப்பட்ட வெற்றிலை சாகுபடி இருக்கக்கூடாது. நிலம் தயாரித்த பிறகு, பொதுவாக 1.2mx7.5m அளவில் படுக்கைகள் தயார் செய்யப்படுகின்றன. படுக்கையின் அளவு இருக்கும் இடத்தைப் பொறுத்து மாறுபடும். மேலாண்மை நடைமுறைகளை அனுமதிக்கவும் நோய் பரவுவதைக் கட்டுப்படுத்தவும் படுக்கைகளுக்கு இடையே போதுமான இடைவெளி விடப்பட வேண்டும்.",
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
                    Text("பயிர் மேலாண்மை",
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
                    Text("உர பயன்பாடு",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("ஒவ்வொரு 3-4 வாரங்களுக்கு ஒருமுறை வெற்றிலை பறிக்கப்படுகிறது, அதன் மூலம் கணிசமான அளவு ஊட்டச்சத்து வயலில் இருந்து அகற்றப்படுகிறது. எனவே அதிக மகசூல் மற்றும் சிறந்த வளர்ச்சிக்கு ரசாயன உரங்கள் அவசியம்.",
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
                    Text("உர பரிந்துரை",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("Urea                                            195g\nTriple Super phosphate               65g\nMuriate of Potash                       100g\nKeserite                                        60g\n420 கிராம் மேற்கண்ட கலவையை 100 வெற்றிலை கொடிகளுக்கு ஒவ்வொரு மூன்று வார இடைவெளியில் இட வேண்டும்.",
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
                    Text("கரிம உரம்",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("ஆரம்பத்தில் பசுவின் சாணம் அல்லது தொழு உரத்தை சுமார் ஒரு மாதத்திற்குப் பிறகு பாத்தியில் இட வேண்டும் மற்றும் புதிதாக நடப்பட்ட துண்டுகளுக்கு சேதம் ஏற்படாமல் மண்ணுடன் நன்கு கலக்க வேண்டும். வெற்றிலைக்கு நன்கு தயாரிக்கப்பட்ட கோழி எரு அல்லது ஆட்டு எருவையும் பயன்படுத்தலாம். சிதைந்த கிளிரிசிடியா இலைகளை இடுவது சிறந்த வளர்ச்சிக்கும் அதிக மகசூலுக்கும் மிகவும் நன்மை பயக்கும்.",
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
                    Text("கத்தரித்தல் மற்றும் பயிற்சி",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("இது பொதுவாக லைவ் சப்போர்ட்ஸ் அல்லது டெட் சப்போர்ட்ஸ் ஆகியவற்றில் பயிற்றுவிக்கப்படுகிறது, ஆனால் காங்கிரீட் போஸ்ட் அல்லது தென்னை கயிறுகளையும் மாற்றாகப் பயன்படுத்தலாம்.\nவெற்றிலை கொடியின் 1மீ உயரத்தில் கத்தரித்தால் பிளேஜியோட்ரோபிக் கிளைகள் மற்றும் மகசூல் அதிகரிக்க விரும்பப்படுகிறது.\n1.2 மீ வளர்ச்சிக்குப் பிறகு வெற்றிலை திராட்சை மரம் நிறுவப்பட்டது.",
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
                    Text("பயிர் பாதுகாப்பு",
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
                    Text("நோய்கள்",
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
               const Text("சாந்தோமோனாஸ் கேம்பெஸ்ட்ரிஸ் பெட்லிகோலா எனப்படும் பாக்டீரியாவால் வெற்றிலைக் கருகல் நோய் ஏற்படுகிறது. மழைக் காலங்களில் நோய் பரவும். முதல் சிறப்பியல்பு அறிகுறி இலைகளின் அடியில் ஈரமான எண்ணெய் திட்டுகள். படிப்படியாக அவை பரவி பழுப்பு அல்லது கருப்பு நிறமாக மாறும். நிலை தீவிரமாக இருக்கும்போது, ​​இலைகள் மற்றும் கணுக்கள் உதிர்வதன் விளைவாக இந்த திட்டுகள் தண்டுக்கு பரவக்கூடும். இதன் விளைவாக, செடி இறந்துவிடும், ஆனால் நோய் சுற்றியுள்ள கொடிகளுக்கு எளிதில் பரவுகிறது. கடுமையான நோயுற்ற தாவரங்களை அழிப்பதைத் தவிர வேறு எந்த கட்டுப்பாட்டு நடவடிக்கையும் கண்டறியப்படவில்லை.",
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
                const Text("நோயுற்ற தாவரங்கள் மற்றும் அருகிலுள்ள தாவரங்களை அந்த இடத்திலேயே எரிக்க வேண்டும். பரவலைக் கட்டுப்படுத்த பூஞ்சைக் கொல்லியைப் பயன்படுத்தலாம். மீதமுள்ள கொடிகளின் அனைத்து முதிர்ந்த இலைகளையும் அகற்றி, வெற்றிலை கொடிகளுக்கு ஒரு முறை அல்லது இரண்டு முறை பூஞ்சைக் கொல்லியை தெளிக்க வேண்டும். பாதிக்கப்பட்ட வெற்றிலைச் செடிகளுக்கு ரசாயன உரம் மற்றும் தண்ணீரைப் பயன்படுத்துவதைக் குறைப்பதன் மூலம் நோய் பரவலைக் கட்டுப்படுத்தலாம். நோய் இல்லாத நடவுப் பொருட்களைப் பயன்படுத்துதல், ஒரு விவசாயக் கிணறு அல்லது நீர்ப்பாசனத்திற்கு தனித்தனி நீர் ஆதாரங்களைப் பயன்படுத்துதல் மற்றும் கடுமையான சுகாதார நடைமுறைகளைப் பின்பற்றுதல் ஆகியவை மாசுபடுவதைத் தவிர்க்க முக்கியமான வழிகள்.",
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
                    Text("பூச்சிகள்",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("பொருளாதார ரீதியாக முக்கியமான பூச்சி பிரச்சனைகள் எதுவும் பதிவாகவில்லை, ஆனால் சாறு உறிஞ்சும் பூச்சிகளால் ஏற்படும் பூச்சி சேதங்கள் மற்றும் வெற்றிலைக்கு சிவப்புப் பூச்சிகளின் சேதங்கள் பொதுவாக வெற்றிலை சாகுபடியில் காணப்படுகின்றன.",
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
               const Text("டிஸ்பிங்க்டஸ் பாலிடஸ் என்பது சேதப்படுத்தும் பூச்சி. நல்ல கலாச்சார நடைமுறைகள் பூச்சி சேதத்தை கட்டுப்படுத்த உதவுகிறது.",
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