// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:saranya_portfolio/constants/colors.dart';
// import 'package:saranya_portfolio/constants/nav_items.dart';
// import 'package:saranya_portfolio/constants/size.dart';
// import 'package:saranya_portfolio/constants/skill_items.dart';
// import 'package:saranya_portfolio/constants/smslinks.dart';
// import 'package:saranya_portfolio/styles/style.dart';
// import 'package:saranya_portfolio/utils/projectsutil.dart';
// import 'package:saranya_portfolio/widgets/contactsection.dart';
// import 'package:saranya_portfolio/widgets/customtextfield.dart';
// import 'package:saranya_portfolio/widgets/drawer_mobile.dart';
// import 'package:saranya_portfolio/widgets/footer.dart';
// import 'package:saranya_portfolio/widgets/header_desktop.dart';
// import 'package:saranya_portfolio/widgets/header_mobile.dart';
// import 'package:saranya_portfolio/widgets/main_desktop.dart';
// import 'package:saranya_portfolio/widgets/main_mobile.dart';
// import 'package:saranya_portfolio/widgets/projectcard.dart';
// import 'package:saranya_portfolio/widgets/projectssecion.dart';
// import 'package:saranya_portfolio/widgets/site_logo.dart';
// import 'package:saranya_portfolio/widgets/skills_desktop.dart';
// import 'package:saranya_portfolio/widgets/skills_mobile.dart';
// import 'dart:js' as js;

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final ScaffoldKey = GlobalKey<ScaffoldState>();
//   final scrollController = ScrollController();
//   final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//     final screenwidth = screenSize.width;
//     final screenheight = screenSize.height;
//     return LayoutBuilder(builder: (context, constraints) {
//       return Scaffold(
//         key: ScaffoldKey,
//         appBar: constraints.maxWidth >= kMinDesktopWidth
//             ? null // No AppBar for Desktop; use HeaderDesktop instead
//             : AppBar(
//                 title: const Text('My Portfolio'),
//                 backgroundColor: CustomColor.bgLight1,
//                 actions: [
//                   IconButton(
//                     icon: const Icon(Icons.menu),
//                     onPressed: () {
//                       ScaffoldKey.currentState?.openEndDrawer();
//                     },
//                   ),
//                 ],
//               ),
//         endDrawer: constraints.maxWidth >= kMinDesktopWidth
//             ? null
//             : DrawerMobile(
//                 onNavItemTap: (int navIndex) {
//                   //call function
//                    ScaffoldKey.currentState?.closeEndDrawer();
//                   scrollToSection(navIndex);
//                 },
//               ),
//         backgroundColor: CustomColor.scaffoldBg,
//         body: SingleChildScrollView(
//           controller: scrollController,
//           scrollDirection: Axis.vertical,
//           child: Column(
//             children: [
//               SizedBox(
//                 key: navbarKeys.first,
//               ),
//               //main
//               if (constraints.maxWidth >= kMinDesktopWidth)
//                 HeaderDesktop(
//                   OnNavMenuTap: (int navIndex) {
//                     //call the func
//                     scrollToSection(navIndex);
//                   },
//                 )
//               else
//                 HeaderMobile(
//                   onLogoTap: () {},
//                   onMenuTap: () {
//                     ScaffoldKey.currentState?.openEndDrawer();
//                   },
//                 ),
//               if (constraints.maxWidth >= kMinDesktopWidth)
//                 const MainDesktop()
//               else
//                 const MainMobile(),
//               //skill
//               Container(
//                 key: navbarKeys[1],
//                 width: screenwidth,
//                 padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
//                 color: CustomColor.bgLight1,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     //title
//                     Text(
//                       "what I can do",
//                       style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: CustomColor.whitePrimary),
//                     ),
//                     SizedBox(
//                       height: 50,
//                     ),
//                     //platform and skills
//                     if (constraints.maxWidth >= kMedDesktopWidth)
//                       const SkillsDesktop()
//                     else
//                       const SkillsMobile()
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               //project

//               Projectssecion(
//                 key: navbarKeys[2],
//               ),
//               //contact
//               SizedBox(
//                 height: 30,
//               ),
//               Contactsection(
//                 key: navbarKeys[3],
//               ),
//               //footer
//               const Footer()
//             ],
//           ),
//         ),
//       );
//     });
//   }

//   void scrollToSection(int navIndex) {
//     if (navIndex == 4) {
//       //open a blog page
//       js.context.callMethod('open',[Smslinks.pdf]);
//       return;
//     }
//     final key = navbarKeys[navIndex];
//     Scrollable.ensureVisible(key.currentContext!,
//         duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:saranya_portfolio/constants/colors.dart';
import 'package:saranya_portfolio/constants/nav_items.dart';
import 'package:saranya_portfolio/constants/size.dart';
import 'package:saranya_portfolio/constants/skill_items.dart';
import 'package:saranya_portfolio/constants/smslinks.dart';
import 'package:saranya_portfolio/styles/style.dart';
import 'package:saranya_portfolio/utils/projectsutil.dart';
import 'package:saranya_portfolio/widgets/contactsection.dart';
import 'package:saranya_portfolio/widgets/customtextfield.dart';
import 'package:saranya_portfolio/widgets/drawer_mobile.dart';
import 'package:saranya_portfolio/widgets/footer.dart';
import 'package:saranya_portfolio/widgets/header_desktop.dart';
import 'package:saranya_portfolio/widgets/header_mobile.dart';
import 'package:saranya_portfolio/widgets/main_desktop.dart';
import 'package:saranya_portfolio/widgets/main_mobile.dart';
import 'package:saranya_portfolio/widgets/projectcard.dart';
import 'package:saranya_portfolio/widgets/projectssecion.dart';
import 'package:saranya_portfolio/widgets/site_logo.dart';
import 'package:saranya_portfolio/widgets/skills_desktop.dart';
import 'package:saranya_portfolio/widgets/skills_mobile.dart';
import 'dart:js' as js;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenwidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: ScaffoldKey,
        appBar: AppBar(
          backgroundColor: CustomColor.bgLight1,
          elevation: 0,
          toolbarHeight: 60.0,
          flexibleSpace: constraints.maxWidth >= kMinDesktopWidth
              ? HeaderDesktop(
                  OnNavMenuTap: (int navIndex) {
                    scrollToSection(navIndex);
                  },
                )
              : null,
          title: constraints.maxWidth < kMinDesktopWidth
              ? const Text('SK',style: TextStyle( decoration: TextDecoration.underline,fontWeight: FontWeight.bold, fontSize: 20,color:CustomColor.yellowSecondary,))
              : null,
          actions: constraints.maxWidth < kMinDesktopWidth
              ? [
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      ScaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                ]
              : null,
        ),
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DrawerMobile(
                onNavItemTap: (int navIndex) {
                  ScaffoldKey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);
                },
              ),
        backgroundColor: CustomColor.scaffoldBg,
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                key: navbarKeys.first,
              ),
              // Main section
              if (constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),
              // Skill section
              Container(
                key: navbarKeys[1],
                width: screenwidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Title
                    Text(
                      "What I Can Do",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    // Platform and skills
                    if (constraints.maxWidth >= kMedDesktopWidth)
                      const SkillsDesktop()
                    else
                      const SkillsMobile()
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // Projects section
              Projectssecion(
                key: navbarKeys[2],
              ),
              const SizedBox(
                height: 30,
              ),
              // Contact section
              Contactsection(
                key: navbarKeys[3],
              ),
              // Footer
              const Footer(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      // Open a blog page
      js.context.callMethod('open', [Smslinks.pdf]);
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
