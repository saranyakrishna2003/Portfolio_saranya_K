import 'package:flutter/material.dart';
import 'package:saranya_portfolio/constants/colors.dart';
import 'package:saranya_portfolio/constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //platform
        // ConstrainedBox(
        //   constraints: const BoxConstraints(maxWidth: 450),
        //   child: Wrap(
        //     spacing: 5.0,
        //     runSpacing: 5.0,
        //     children: [
        //       for (int i = 0; i < platformItems.length; i++)
        //         Container(
        //           width: 200,
        //           decoration: BoxDecoration(
        //               color: CustomColor.bgLight2,
        //               borderRadius: BorderRadius.circular(5)),
        //           child: ListTile(
        //               contentPadding: EdgeInsets.symmetric(
        //                   horizontal: 20.0, vertical: 20.0),
        //               leading: Image.asset(
        //                 platformItems[i]["img"],
        //                 width: 26.0,
        //               ),
        //               title: Text(platformItems[i]["title"])),
        //         )
        //     ],
        //   ),
        // ),
        //skills
        SizedBox(
          width: 50,
        ),
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                for (int i = 0; i < skillItems.length; i++)
                  Chip(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                    backgroundColor: CustomColor.bgLight2,
                    label: Text(skillItems[i]["title"]),
                    avatar: Image.asset(skillItems[i]["img"]),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
