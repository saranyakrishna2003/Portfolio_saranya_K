// import 'package:flutter/material.dart';
// import 'package:saranya_portfolio/constants/colors.dart';

// class MainDesktop extends StatelessWidget {
//   const MainDesktop({super.key});

//   @override
//   Widget build(BuildContext context) {
//      final screenSize=MediaQuery.of(context).size;
//   final screenwidth=screenSize.width;
//     return Container(
//                     margin: EdgeInsets.symmetric(horizontal: 20.0,),
//                     height: screenSize.height/1.2,
//                     constraints: BoxConstraints(minHeight: 350.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text("Hi,\nI'm SARANYA K\n Full Stack Web Developer",style: TextStyle(fontSize:30,height:1.5,fontWeight:  FontWeight.bold,color: CustomColor.whitePrimary,),),
//                             const SizedBox(height: 15,),
//                             SizedBox(
//                               width: 250,
//                               child: ElevatedButton(onPressed: (){}, child: Text("GET IN TOUCH"),))
//                           ],
//                         ),
//                         Image.asset("assests/WhatsApp Image 2025-01-01 at 12.14.51 AM.jpeg",
//                         width:screenwidth/2 ,
//                         height: screenwidth/4,
//                         )
//                       ],
//                     ),
//                    )
//          ;
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:saranya_portfolio/constants/colors.dart';

// class MainDesktop extends StatelessWidget {
//   const MainDesktop({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//     final screenWidth = screenSize.width;

//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 20.0),
//       height: screenSize.height / 1.2,
//       constraints: const BoxConstraints(minHeight: 350.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           // Text and Button Section
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Hi,\nI'm SARANYA K\nFull Stack Web Developer",
//                 style: TextStyle(
//                   fontSize: 30,
//                   height: 1.5,
//                   fontWeight: FontWeight.bold,
//                   color: CustomColor.whitePrimary,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               SizedBox(
//                 width: 250,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(vertical: 15),
//                     backgroundColor: CustomColor.yellowPrimary, // Example button color
//                   ),
//                   child: const Text("GET IN TOUCH"),
//                 ),
//               ),
//             ],
//           ),
//           // Circular Image with Faded Corners
//           Container(
//             width: screenWidth / 2,
//             height: screenWidth / 4,
//             alignment: Alignment.center,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//             ),
//             child: Stack(
//               children: [
//                 // Circular Image
//                 ClipOval(
//                   child: Image.asset(
//                     "assests/WhatsApp Image 2025-01-01 at 12.14.51 AM.jpeg", // Corrected asset path
//                     fit: BoxFit.cover,
                    
//                   ),
//                 ),
//                 // Gradient Overlay for Faded Corners
//                 // ClipOval(
//                 //   child: ShaderMask(
//                 //     shaderCallback: (Rect bounds) {
//                 //       return RadialGradient(
//                 //         colors: [
//                 //           Colors.transparent,
//                 //           Colors.black.withOpacity(0.5), // Darker fade effect
//                 //         ],
//                 //         stops: [0.7, 1.0], // Control fade position
//                 //         center: Alignment.center,
//                 //         radius: 0.7, // Adjust radius for fade
//                 //       ).createShader(bounds);
//                 //     },
//                 //     blendMode: BlendMode.dstIn,
//                 //     child: Container(
//                 //       color: Colors.black,
//                 //       width: screenWidth / 2,
//                 //       height: screenWidth / 4,
//                 //     ),
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:saranya_portfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';
class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});
   final String _cvUrl = 'https://saranya-k.tiiny.site'; 
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenSize.height / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Text and Button Section
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi,\nI'm SARANYA K\nFull Stack Web Developer",
                style: TextStyle(
                  fontSize: 30,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              
              const SizedBox(height: 20),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () async {
                     if (await canLaunch(_cvUrl)) {
                      await launch(_cvUrl);
                    } else {
                      throw 'Could not launch $_cvUrl';
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: CustomColor.yellowPrimary,
                  ),
                  child: const Text("Download CV"),
                ),
              ),
              SizedBox(height: 35,),
              SizedBox(
                height: 200,width: 500,
                child: Text(
                   textAlign: TextAlign.justify,
                  '''Fullstack Developer, a skilled full-stack web developer with expertise in Java, SQL, CSS, HTML, JavaScript, Flutter, Vue.js, Golang, and Python. Through academic projects, I have developed a strong foundation in both front-end and back-end development. I am passionate about continuous learning and seek opportunities to collaborate with experienced professionals to further enhance my skills and contribute meaningfully to the field of web development.''',
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                  ),
                  
                ),
              )
              
            ],
          ),
          // Circular Image with Faded Corners
          Container(
            width: screenWidth / 2.5,
            height: screenWidth / 2.5,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: [
                // Circular Image
                ClipOval(
                  child: Image.asset(
                    "assests/WhatsApp Image 2025-01-01 at 12.14.51 AM.jpeg", // Corrected asset path
                    fit: BoxFit.scaleDown,
                    width: screenWidth / 4,
                    height: screenWidth / 3.7,
                  ),
                ),
                // Gradient Overlay for Faded Corners
                ClipOval(
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return RadialGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.5), // Darker fade effect
                        ],
                        stops: [0.7, 1.0], // Control fade position
                        center: Alignment.center,
                        radius: 0.9, // Adjust radius for fade
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.dstIn,
                    child: Container(
                    width: screenWidth / 4,
                    height: screenWidth / 3.7,
                      color: const Color.fromARGB(255, 198, 184, 184),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
