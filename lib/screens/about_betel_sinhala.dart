import 'package:flutter/material.dart';

class AboutBetelSinhala extends StatelessWidget {
   const AboutBetelSinhala({super.key});

@override
  Widget build(BuildContext context) {
return Scaffold(
         backgroundColor:const Color.fromARGB(255, 1, 86, 6),
        appBar: AppBar(
          backgroundColor:const Color.fromARGB(255, 2, 32, 1),
          shadowColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
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
                    Text("ප්රධාන වර්ධනය වන ප්රදේශ",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               
                  const Text("බුලත් රට පුරා වැවෙන නමුත් 'කළු බුලත්' ලෙස හඳුන්වන ඝන කොළ සහිත තද කොළ පැහැති විශාල කොළ සහිත අපනයන ගුණාත්මක බුලත් වාණිජ නිෂ්පාදනය කුරුණෑගල, ගම්පහ, කෑගල්ල, කළුතර සහ කොළඹ වැනි දිස්ත්‍රික්ක කිහිපයකට සැලකිය යුතු ලෙස සීමා වී ඇත.",
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
                    Text("පාංශු සහ දේශගුණික අවශ්යතා",
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
                    Text("පාංශු",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("ශ්‍රී ලංකාවේ තෙත් සහ වියලි දේශගුණික කලාපයේ හොඳින් ජලය බැස යන සාරවත් පසෙහි බුලත් සාර්ථකව වගා කළ හැක. විශේෂයෙන්ම කුරුණෑගල සහ ගම්පහ දිස්ත්‍රික්කවල ලැටරිටික් සහ මැටි ලෝම පස බුලත් වගාව සඳහා ඉතා යෝග්‍ය වේ. ජලය බැස යන, ලවණ හෝ ක්ෂාර පස් බුලත් වර්ධනයට සුදුසු නොවේ.",
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
                    Text("දේශගුණය",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("හොඳින් බෙදා හරින ලද වාර්ෂික වර්ෂාපතනය බුලත් වැල් වර්ධනය වැඩි කරයි.\nබුලත් හිරුට ආදරය කරන ශාකයක් වන නමුත් වියළි කලාපයේ වඩා තෙත් කලාපයේ සහ අතරමැදි කලාපවල වඩා හොඳ තත්ත්වයේ කොළ නිපදවයි. බෝග සාර්ථකව වගා කිරීම සඳහා සුදුසු සෙවන මට්ටම් සහ වාරිමාර්ග අත්‍යවශ්‍ය වේ. උණුසුම් වියළි සුළං හානිකර වන අතර වැල්වල වර්ධනය අඩාල කරයි.",
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
                    Text("බෝග පිහිටුවීම",
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
                    Text("රෝපණ ද්රව්ය",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
                const SizedBox(
                height: 10,
               ),
               const Text("බුලත් සාමාන්‍යයෙන් ප්‍රචාරණය කරනු ලබන්නේ කඳ කැබලි භාවිතා කිරීමෙනි. දඩු කැබලි සෞඛ්‍ය සම්පන්න විය යුතු අතර ඉහළ අස්වැන්නක් සහිත මව් වැල් වලින් ගත යුතු අතර පත්‍ර සාපේක්ෂව විශාල සහ තද කොළ පැහැයෙන් යුක්ත වේ. දඩු කැබලි සෘජුවම ක්‍ෂේත්‍රයේ සිටුවිය හැකි අතර ඉහළ පස්, ගොම, කොහු කුඩු සහ වැලි සමාන කොටස් මිශ්‍රණයකින් පුරවා ඇති පොලි බෑග්වල මුල් බැසගත් දඩු කැබලි ලෙස සිටුවිය හැකිය.",
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
                    Text("ක්ෂේත්ර රෝපණ",
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
               const Text("සාමාන්‍යයෙන් බුලත් වගා කරන්නේ ගිලුණු පාත්තිවල ය. ක්ෂේත්‍රය පැතලි, හොඳින් ජලය බැස යන සහ හොඳ හිරු එළිය සහිත විය යුතුය. අඩුම තරමින් වසර 2ක් යනතුරු ක්ෂේත්‍රයේ බැක්ටීරියා කොළ අංගමාරය ආසාදනය වූ බුලත් වගාවක් නොතිබිය යුතුය. බිම් සැකසීමෙන් පසු, සාමාන්යයෙන් 1.2mx7.5m ප්රමාණයේ ඇඳන් සකස් කරනු ලැබේ. පවතින ඉඩ ප්‍රමාණය අනුව ඇඳ ප්‍රමාණය වෙනස් විය හැක. කළමනාකරණ පිළිවෙත්වලට ඉඩ සැලසීමට සහ රෝග පැතිරීම පාලනය කිරීමට ඇඳන් අතර ප්‍රමාණවත් පරතරයක් තැබිය යුතුය.",
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
                    Text("බෝග කළමනාකරණය",
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
                    Text("පොහොර යෙදීම",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("සෑම සති 3-4 කට වරක් බුලත් දළු නෙළනු ලබන අතර එමඟින් සැලකිය යුතු පෝෂක ප්‍රමාණයක් ක්ෂේත්‍රයෙන් ඉවත් කරනු ලැබේ. එබැවින් වැඩි අස්වැන්නක් සහ හොඳ වර්ධනයක් සඳහා රසායනික පොහොර යෙදීම අත්යවශ්ය වේ.",
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
                    Text("පොහොර නිර්දේශය",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("Urea                                            195g\nTriple Super phosphate               65g\nMuriate of Potash                       100g\nKeserite                                        60g\nඉහත මිශ්‍රණයෙන් ග්‍රෑම් 420ක් බුලත් වැල් 100කට සෑම සති තුනකට වරක් යෙදිය යුතුය.",
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
                    Text("කාබනික පොහොර",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("මුලදී මසකට පමණ පසු ගොම හෝ කොම්පෝස්ට් පාත්තියට යෙදිය යුතු අතර අලුතින් සිටුවන ලද දඩු කැබලිවලට හානි නොවන පරිදි පස සමඟ හොඳින් මිශ්‍ර කළ යුතුය. බුලත් සඳහා හොඳින් සකස් කළ කුකුළු පොහොර හෝ එළු පොහොර ද භාවිතා කළ හැකිය. දිරාපත් වූ ග්ලිරිසීඩියා කොළ යෙදීම වඩා හොඳ වර්ධනයක් සහ ඉහළ අස්වැන්නක් සඳහා ඉතා ප්‍රයෝජනවත් වේ.",
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
                    Text("කප්පාදු කිරීම සහ පුහුණුව",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("එය සාමාන්‍යයෙන් සජීවී ආධාරක හෝ මළ ආධාරක සඳහා පුහුණු කර ඇති නමුත් කොන්ක්‍රීට් කණු හෝ කොහු ලණු ද ආදේශක ලෙස භාවිතා කළ හැක.\nමීටර 1.2 ක වර්ධනයෙන් පසු බුලත් වැලේ මීටර් 1 ක් උසින් කප්පාදු කිරීම වඩාත් සුදුසුය.\nමීටර් 1.2 ක වර්ධනයෙන් පසු බුලත් වැල් පන්දලම් ස්ථාපිත කර ඇත.",
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
                    Text("බෝග ආරක්ෂණය",
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
                    Text("රෝග",
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
               const Text("බුලත් කොළ අංගමාරය ඇතිවන්නේ Xanthomonas campestris betlicola නම් බැක්ටීරියාව මගිනි. වැසි කාලවලදී රෝගය වසංගතයක් බවට පත් වේ. පළමු ලාක්ෂණික රෝග ලක්ෂණය වන්නේ කොළ යට තෙත් තෙල් සහිත පැල්ලම් ය. ක්‍රමයෙන් ඒවා පැතිරී දුඹුරු හෝ කළු පැහැයට හැරේ. තත්ත්වය බරපතළ වූ විට මෙම ලප කොළ සහ නෝඩ් ගැලවී යාමේ ප්‍රතිඵලයක් ලෙස කඳට පැතිර යා හැක. එහි ප්‍රතිඵලයක් ලෙස ශාකය මිය යන නමුත් රෝගය පහසුවෙන් අවට වැල් වලට පැතිර යා හැක. බරපතල ලෙස රෝගාතුර වූ ශාක විනාශ කිරීම හැර වෙනත් පාලන පියවරක් හඳුනාගෙන නොමැත.",
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
                const Text("රෝගී ශාක හා අසල පැල එම ස්ථානයේදීම පුළුස්සා දැමිය යුතුය. පැතිරීම පාලනය කිරීම සඳහා දිලීර නාශකයක් යෙදිය හැකිය. ඉතිරි වැල්වල මේරූ කොළ සියල්ල ඉවත් කර බුලත් වැල්වලට වරක් හෝ දෙවරක් දිලීර නාශකයක් ඉසිය යුතු ය. ආසාදිත බුලත් බිම් සඳහා රසායනික පොහොර සහ ජලය යෙදීම අඩු කිරීමෙන් රෝග පැතිරීම පාලනය කළ හැකිය. රෝගවලින් තොර රෝපණ ද්‍රව්‍ය භාවිතය, වාරිමාර්ග සඳහා කෘෂි ළිඳක් හෝ හුදකලා ජල මූලාශ්‍රයක් භාවිතා කිරීම සහ දැඩි සනීපාරක්ෂක පිළිවෙත් පිළිපැදීම අපවිත්‍ර වීම වළක්වා ගැනීමට වැදගත් ක්‍රම වේ.",
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
                    Text("කෘමි හානි",
                        style: TextStyle(color: Color.fromARGB(255, 169, 239, 166), 
                        fontSize: 20, 
                        fontWeight: FontWeight.w500),
                        ),
                  ],
               ),
               const SizedBox(
                height: 10,
               ),
               const Text("ආර්ථික වශයෙන් වැදගත් පළිබෝධ ගැටළු කිසිවක් වාර්තා නොවන නමුත් යුෂ උරා බොන කෘමීන්ගෙන් කෘමි හානි සහ බුලත් කොළ වලට රතු මයිටාවන් හානි කිරීම බුලත් වගාවන්හි බහුලව දක්නට ලැබේ.",
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
               const Text("හානිකර කෘමියා Dispinctus politus වේ. හොඳ සංස්කෘතික භාවිතයන් කෘමි හානි පාලනය කිරීමට උපකාරී වේ.",
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