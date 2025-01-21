
// import 'package:flutter/material.dart';
// import 'package:saranya_portfolio/constants/colors.dart';
// import 'package:saranya_portfolio/utils/projectsutil.dart';
// import 'dart:js' as js;
// class ProjectCard extends StatelessWidget {
//   const ProjectCard({
//     super.key,
//     required this.project
//   });
//   final Projectsutil project;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       clipBehavior: Clip.antiAlias,
//       height: 290,
//       width: 260,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: CustomColor.bgLight2,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           //project image
//           Image.asset(project.image,height: 150,width: 260,
//           fit:BoxFit.cover,),
//           //title
//           Padding(
//             padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
//             child: Text(project.title,style:TextStyle(
//               fontWeight: FontWeight.w600,
//               color: CustomColor.whitePrimary
//             )),
//           ),
//           //subtile
//           Padding(
//             padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
//             child: Text(project.subtitle,style:TextStyle(
//               fontSize: 12,
//               color: CustomColor.whiteSecondary
//             )),
//            ),
//            //  Padding(
//           //   padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
//           //   child: Text(project.description,style:TextStyle(
//           //     fontSize: 12,
//           //     color: CustomColor.whiteSecondary
//           //   )),
//           // )
          
//           const Spacer(),
//          //footer
//           Container(
//             color: CustomColor.bgLight1,
//             padding:const  EdgeInsets.symmetric(horizontal: 12,vertical: 10),
//         child: Row(
//           children: [
//             Text("Available on :",style: TextStyle(color: CustomColor.yellowSecondary,
//             fontSize: 10)),
//             Spacer(),
//              if(project.link!=null)

//            InkWell(
//               onTap: () {
//                 js.context.callMethod("open",[project.link]);
//               },
//               child: Image.asset('assests/web-link.png',width:17)),
    
//             Padding(padding: EdgeInsets.only(left: 6),
    
//             // child: 
//             // InkWell(
//             //   onTap: () {
                
//             //   },
//             //   child: Image.asset('assests/web-link.png',width:17)
//             //   ),
//             )
//           ],
//         ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:saranya_portfolio/constants/colors.dart';
import 'package:saranya_portfolio/utils/projectsutil.dart';
import 'dart:js' as js;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Projectsutil project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Project image
          Image.asset(
            project.image,
            height: 150,
            width: 260,
            fit: BoxFit.cover,
          ),
          // Title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          // Subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          // Footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
               InkWell(
                  onTap: () {
                    // Open a dialog with the project description
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  project.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: CustomColor.whitePrimary,
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.close,
                                  color: CustomColor.whitePrimary,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          ),
                          content: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              project.description,
                              style: TextStyle(
                                fontSize: 14,
                                color: CustomColor.whiteSecondary,
                              ),
                            ),
                          ),
                          backgroundColor: CustomColor.bgLight2,
                        );
                      },
                    );
                  },
                  child: Text(
                    "About project",
                    style: TextStyle(
                      color: CustomColor.yellowSecondary,
                      fontSize: 10,
                    ),
                  ),
                ),
                Spacer(),
                if (project.link != null)
                  InkWell(
                    onTap: () {
                      // Open the project link in a browser
                      js.context.callMethod("open", [project.link]);
                    },
                    child: Image.asset('assests/web-link.png', width: 17),
                  ),
                // Add an onTap to open the description dialog
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}

