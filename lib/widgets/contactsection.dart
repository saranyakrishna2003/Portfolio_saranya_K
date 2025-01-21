// import 'package:flutter/material.dart';
// import 'package:saranya_portfolio/constants/colors.dart';
// import 'package:saranya_portfolio/constants/size.dart';
// import 'package:saranya_portfolio/constants/smslinks.dart';
// import 'package:saranya_portfolio/widgets/customtextfield.dart';
// import 'dart:js' as js;
// class Contactsection extends StatelessWidget {
//   const Contactsection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//               padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
//               color: CustomColor.bgLight1,
//               child: Column(
//                 children: [
//                   //title
//                   Text(
//                     "Get in Touch ",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 24,
//                         color: CustomColor.whitePrimary),
//                   ),
//                   const SizedBox(
//                     height: 50,
//                   ), //
//                   ConstrainedBox(
//                     constraints: BoxConstraints(
//                       maxWidth: 700,
//                       maxHeight: 100
//                     ),
//                     child:LayoutBuilder(builder: (context,constraints){
//                       if(constraints.maxWidth>=kMinDesktopWidth){
//                          return  buildnameEmailFieldDesktop();
//                       }
//                      //else
//                      return buildnameEmailFieldMobile();


//                     })
//                   ),
//                   SizedBox(
//                     height: 15,
//                   )
//                   //message
//                   ,
//                   ConstrainedBox(
//                     constraints: BoxConstraints(
//                       maxWidth: 700,
//                     ),
//                     child: Customtextfield(
//                       hintText: "Your message",
//                       maxLines: 16,
//                     ),
//                   ),
//                   //send button
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   ConstrainedBox(
//                     constraints: BoxConstraints(
//                       maxWidth: 700,
//                     ),
//                     child: SizedBox(
//                       width: double.maxFinite,
//                       child: ElevatedButton(
//                           onPressed: () {}, child: Text("Get in touch")),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   ConstrainedBox(
//                     constraints: BoxConstraints(
//                       maxWidth: 300,
//                     ),
//                     child: const Divider(),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ), //sms icon button links

//                   Wrap(
//                     spacing: 12,
//                     runSpacing: 12,
//                     alignment: WrapAlignment.center,
//                     children: [
//                       InkWell(
//                           onTap: () {
//                             js.context.callMethod('open',[Smslinks.github]);
//                           },
//                           child: Image.asset(
//                             "assests/github.png",
//                             width: 28,
//                           )),
//                       InkWell(
//                           onTap: () 
//                           {
//                              js.context.callMethod('open',[Smslinks.linkedin]);
//                           },
//                           child: Image.asset(
//                             "assests/linkedin.png",
//                             width: 28,
//                           )),
//                       // InkWell(
//                       //     onTap: () {},
//                       //     child: Image.asset(
//                       //       "assests/whatsapp.png",
//                       //       width: 28,
//                       //     )),
//                       InkWell(
//                           onTap: () {
//                              js.context.callMethod('open',[Smslinks.insta]);
//                           },
//                           child: Image.asset(
//                             "assests/insta.png",
//                             width: 28,
//                           )),
//                       InkWell(
//                           onTap: () {
//                             js.context.callMethod('open',['mailto:saranyakrishna3113@gmail.com']);
//                           },
//                           child: Image.asset(
//                             "assests/email.png",
//                             width: 28,
//                           ))
//                     ],
//                   )
//                 ],
//               ),
//             );
//   }
//   Row buildnameEmailFieldDesktop(){
//     return  Row(
//                       children: [
//                         //name
//                         Flexible(
//                             child: Customtextfield(
//                           hintText: "Your name",
//                         )),
//                         SizedBox(
//                           width: 15,
//                         ),
//                         //email
//                         Flexible(
//                             child: Customtextfield(
//                           hintText: "Your email",
//                         )),
//                       ],
//                     );
//   }
//    Column buildnameEmailFieldMobile(){
//     return  
//     Column(
//                       children: [
//                         //name
//                         Flexible(
//                             child: Customtextfield(
//                           hintText: "Your name",
//                         )),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         //email
//                         Flexible(
//                             child: Customtextfield(
//                           hintText: "Your email",
//                         )),
//                       ],
//                     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:saranya_portfolio/constants/colors.dart';
import 'package:saranya_portfolio/constants/size.dart';
import 'package:saranya_portfolio/constants/smslinks.dart';
import 'package:saranya_portfolio/widgets/customtextfield.dart';
import 'dart:js' as js;

class Contactsection extends StatefulWidget {
  const Contactsection({super.key});

  @override
  _ContactsectionState createState() => _ContactsectionState();
}

class _ContactsectionState extends State<Contactsection> {
  // Controllers for text fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          //title
          Text(
            "Get in Touch ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          // Form fields
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= kMinDesktopWidth) {
                return buildnameEmailFieldDesktop();
              }
              return buildnameEmailFieldMobile();
            }),
          ),
          SizedBox(
            height: 15,
          ),
          // message
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: Customtextfield(
              controller: _messageController,
              hintText: "Your message",
              maxLines: 16,
            ),
          ),
          // send button
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  _sendEmail();
                },
                child: Text("Get in touch"),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(
            height: 15,
          ),
          // Social icons
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [Smslinks.github]);
                },
                child: Image.asset(
                  "assests/github.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [Smslinks.linkedin]);
                },
                child: Image.asset(
                  "assests/linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [Smslinks.insta]);
                },
                child: Image.asset(
                  "assests/insta.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', ['mailto:saranyakrishna3113@gmail.com']);
                },
                child: Image.asset(
                  "assests/email.png",
                  width: 28,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Row buildnameEmailFieldDesktop() {
    return Row(
      children: [
        // Name
        Flexible(
            child: Customtextfield(
          controller: _nameController,
          hintText: "Your name",
        )),
        SizedBox(
          width: 15,
        ),
        // Email
        Flexible(
            child: Customtextfield(
          controller: _emailController,
          hintText: "Your email",
        )),
      ],
    );
  }

  Column buildnameEmailFieldMobile() {
    return Column(
      children: [
        // Name
        Flexible(
            child: Customtextfield(
          controller: _nameController,
          hintText: "Your name",
        )),
        SizedBox(
          height: 15,
        ),
        // Email
        Flexible(
            child: Customtextfield(
          controller: _emailController,
          hintText: "Your email",
        )),
      ],
    );
  }

  // Method to send the email
  void _sendEmail() {
    String name = _nameController.text;
    String email = _emailController.text;
    String message = _messageController.text;

    String subject = Uri.encodeComponent('Contact from $name');
    String body = Uri.encodeComponent('Name: $name\nEmail: $email\nMessage: $message');

    // Construct the mailto URL
    String mailtoUrl = 'mailto:saranyakrishna3113@gmail.com?subject=$subject&body=$body';

    // Open the mailto link
    js.context.callMethod('open', [mailtoUrl]);
  }
}
