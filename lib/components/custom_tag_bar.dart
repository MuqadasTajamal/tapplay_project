// // import 'package:flutter/material.dart';
// // import 'package:tapplay_project/components/build_tag.dart';
// // import 'package:tapplay_project/view/wtf/artise_about.dart';
// // import 'package:tapplay_project/view/wtf/artise_like.dart';
// // import 'package:tapplay_project/view/wtf/artise_profile.dart';

// // class CustomTagBar extends StatelessWidget {
// //   const CustomTagBar({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return  Row(
// //                   children: [
// //                     InkWell(
// //                       onTap: () {
// //                         Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                             builder: (context) => ArtiseProfile(),
// //                           ),
// //                         );
// //                       },
// //                       child: BuildTag(
// //                         text: "Episodes",
// //                         bgColor: Colors.white,
// //                         textColor: Colors.black,
// //                       ),
// //                     ),
// //                     InkWell(
// //                       onTap: () {
// //                         Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                             builder: (context) => ArtiseAbout(),
// //                           ),
// //                         );
// //                       },
// //                       child: BuildTag(
// //                         text: "About",
// //                         bgColor: const Color(0xFF2A3352),
// //                         textColor: Colors.white,
// //                       ),
// //                     ),
// //                     InkWell(
// //                       onTap: () {
// //                         Navigator.push(
// //                           context,
// //                           MaterialPageRoute(builder: (context) => ArtiseLike()),
// //                         );
// //                       },
// //                       child: BuildTag(
// //                         text: "You may also like",
// //                         bgColor: const Color(0xFF2A3352),
// //                         textColor: Colors.white,
// //                       ),
// //                     ),
// //                   ],
// //                 );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:tapplay_project/components/build_tag.dart';

// class CustomTagBar extends StatelessWidget {
//   final Widget episodesScreen;
//   final Widget aboutScreen;
//   final Widget likeScreen;

//   const CustomTagBar({
//     super.key,
//     required this.episodesScreen,
//     required this.aboutScreen,
//     required this.likeScreen,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         InkWell(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => episodesScreen),
//             );
//           },
//           child: BuildTag(
//             text: "Episodes",
//             bgColor: Colors.white,
//             textColor: Colors.black,
//           ),
//         ),

//         InkWell(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => aboutScreen),
//             );
//           },
//           child: BuildTag(
//             text: "About",
//             bgColor: const Color(0xFF2A3352),
//             textColor: Colors.white,
//           ),
//         ),

//         InkWell(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => likeScreen),
//             );
//           },
//           child: BuildTag(
//             text: "You may also like",
//             bgColor: const Color(0xFF2A3352),
//             textColor: Colors.white,
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:tapplay_project/components/build_tag.dart';

class CustomTagBar extends StatelessWidget {
  final int selectedIndex;
  final Widget episodesScreen;
  final Widget aboutScreen;
  final Widget likeScreen;

  const CustomTagBar({
    super.key,
    required this.selectedIndex,
    required this.episodesScreen,
    required this.aboutScreen,
    required this.likeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _tag(context, index: 0, title: "Episodes", screen: episodesScreen),
        _tag(context, index: 1, title: "About", screen: aboutScreen),
        _tag(context, index: 2, title: "You may also like", screen: likeScreen),
      ],
    );
  }

  Widget _tag(
    BuildContext context, {
    required int index,
    required String title,
    required Widget screen,
  }) {
    final bool isActive = selectedIndex == index;

    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
      },
      child: BuildTag(
        text: title,
        bgColor: isActive ? Colors.white : const Color(0xFF2A3352),
        textColor: isActive ? Colors.black : Colors.white,
      ),
    );
  }
}
