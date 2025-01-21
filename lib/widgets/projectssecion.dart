import 'package:flutter/material.dart';
import 'package:saranya_portfolio/constants/colors.dart';
import 'package:saranya_portfolio/utils/projectsutil.dart';
import 'package:saranya_portfolio/widgets/projectcard.dart';

class Projectssecion extends StatelessWidget {
  const Projectssecion({super.key});

  @override
  Widget build(BuildContext context) {
    
    final screenwidth =  MediaQuery.of(context).size.width;
  
    return   Container(
              width: screenwidth,
              padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
              child: Column(
                children: [
                  //   Text(
                  //   "MY EXPERIENCE",
                  //   style: TextStyle(
                  //       fontSize: 24,
                  //       fontWeight: FontWeight.bold,
                  //       color: CustomColor.whitePrimary),
                  // ),
                  // //work projects cards
                  // SizedBox(
                  //   height: 50,
                  // ),
                  // ConstrainedBox(
                  //   constraints: BoxConstraints(maxWidth: 900),
                  //   child: Wrap(spacing: 25, runSpacing: 25, children: [
                  //     for (int i = 0; i < projectss.length; i++)
                  //       ProjectCard(
                  //         project: projectss[i],
                  //       )
                  //   ]),
                  // ),
                  // SizedBox(height: 80,),
                  //work projects ttle
                  Text(
                    "projects",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary),
                  ),
                  //work projects cards
                  SizedBox(
                    height: 50,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 900),
                    child: Wrap(spacing: 25, runSpacing: 25, children: [
                      for (int i = 0; i < projectss.length; i++)
                        ProjectCard(
                          project: projectss[i],
                        )
                    ]),
                  ),
                ],
              ),
            );
  }
}