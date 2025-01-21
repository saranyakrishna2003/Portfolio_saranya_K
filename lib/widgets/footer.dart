import 'package:flutter/material.dart';
import 'package:saranya_portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: double.maxFinite,
        alignment: Alignment.center,
        child: Text(
          "© 2024 SARANYA. All rights reserved.",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: CustomColor.whiteSecondary,
          ),
        ));
  }
}
