import 'package:flutter/material.dart';
import 'package:saranya_portfolio/constants/colors.dart';
import 'package:saranya_portfolio/constants/smslinks.dart';
import 'dart:js' as js;
class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
     final screenSize=MediaQuery.of(context).size;
  final screenwidth=screenSize.width;
  final screenheight=screenSize.height;
    return       Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 30),
                    height: screenheight,
                    constraints:const 
                     BoxConstraints(minHeight: 560.0),
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //avtar
                      ShaderMask(
                        shaderCallback: (bounds) {
                          return LinearGradient(colors: [
                          
                           Colors.transparent,
                          Colors.black.withOpacity(0.5), // const Color.fromARGB(255, 38, 39, 44).withOpacity(0.6),CustomColor.scaffoldBg.withOpacity(0.6)
                          ]).createShader(bounds);
                        },
                        blendMode: BlendMode.srcATop,
                          child: Image.asset("assests/WhatsApp Image 2025-01-01 at 12.14.51 AM.jpeg",
                           width:screenwidth,
                         height: screenwidth/3
                          ),
                        ),
                        //intro text
                       const SizedBox(height: 30,),
                      const   Text(
                "Hi,\nI'm SARANYA K\nFull Stack  Developer",
                style: TextStyle(
                  fontSize: 24,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                     js.context.callMethod('open', [Smslinks.pdf]);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: CustomColor.yellowPrimary,
                  ),
                  child: const Text("Download CV"),
                ),
              ),
                  SizedBox(height: 5,)
                  ,SizedBox(
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
                       //btn

                      ],
                     ),
                  );
  }
}