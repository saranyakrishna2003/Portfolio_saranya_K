import 'package:flutter/material.dart';
import 'package:saranya_portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key,this.OnTap,});
final VoidCallback? OnTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
                              onTap: OnTap,
                              child: Text("SK",style: TextStyle(
                                  fontSize: 22,fontWeight: FontWeight.bold,color:CustomColor.yellowSecondary,
                                                                  decoration: TextDecoration.underline, 
                               
                              ),),
                            );
  }
}