import 'package:flutter/material.dart';
import 'package:saranya_portfolio/constants/colors.dart';
import 'package:saranya_portfolio/constants/nav_items.dart';
import 'package:saranya_portfolio/styles/style.dart';
import 'package:saranya_portfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.OnNavMenuTap});
  final Function(int) OnNavMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kHeaderDecoration,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      height: 60.0,
      width: double.maxFinite,
      child: Row(
        children: [
          SiteLogo(
            OnTap: () {},
          ),
          Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                  onPressed: () {
                    OnNavMenuTap(i);
                  },
                  child: Text(
                    navTitles[i],
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.whitePrimary),
                  )),
                  
            )
        ],
      ),
    );
  }
}
