class Projectsutil {
  final String image;
  final String title;
   final String subtitle;
    final String ?link;
    final String description;
    Projectsutil({
      required this.image,required this.title,required this.subtitle,
      this.link, required this. description,
    });
}
//projects

List<Projectsutil> projectss=[
Projectsutil(image: 'assests/projects/pero.jpg' ,
title: 'MENTAL HEALTH CHAT BOT',subtitle: 'PERO(personlised emotion recognition)',
description:''' Integrated login and signup functionality
using MySQL to validate users, ensuring secure and personalized
interactions.
Provided tailored support, including emotional assistance,
coping strategies, and resource referrals.
Enhanced user authentication to deliver effective,
personalized assistance while ensuring data security and
privacy''',
link: 'https://github.com/saranyakrishna2003/MENTAL_HEALTH_CHATBOT_PERO'
)
];