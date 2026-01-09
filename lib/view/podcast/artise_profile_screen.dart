// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:tapplay_project/components/build_tag.dart';
// import 'package:tapplay_project/components/episode_item.dart';
// import 'package:tapplay_project/view/podcast/like_show_screen.dart';
// import 'package:tapplay_project/view/podcast/profile_screen.dart';

// class ArtiseProfileScreen extends StatefulWidget {
//   const ArtiseProfileScreen({super.key});

//   @override
//   State<ArtiseProfileScreen> createState() => _ArtiseProfileScreenState();
// }

// class _ArtiseProfileScreenState extends State<ArtiseProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var s = MediaQuery.of(context).size;

//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/bg.jpg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 30, left: 19, right: 19),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Top Container with image and details
//                     Container(
//                       height: s.height * 0.5,
//                       decoration: BoxDecoration(
//                         image: const DecorationImage(
//                           image: AssetImage("assets/images/r.png"),
//                           fit: BoxFit.contain,
//                         ),
//                         borderRadius: BorderRadius.circular(40),
//                       ),
//                       child: Stack(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Row(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       InkWell(
//                                         onTap: () {
//                                           Navigator.pop(context);
//                                         },
//                                         child: SvgPicture.asset(
//                                           "assets/icons/error.svg",
//                                           height: 24,
//                                           width: 24,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const Spacer(),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: const [
//                                     Text(
//                                       "WTF with Marc Maron",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     Text(
//                                       "Marc Maron",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                     ),
//                                     SizedBox(height: 4),
//                                     Row(
//                                       children: [
//                                         Icon(
//                                           Icons.star_border,
//                                           size: 15,
//                                           color: Color(0xffC5C5C5),
//                                         ),
//                                         SizedBox(width: 4),
//                                         Text(
//                                           "5.0 (2.4k).Stories.Celebrities",
//                                           style: TextStyle(
//                                             color: Color(0xffC5C5C5),
//                                             fontSize: 15,
//                                             fontWeight: FontWeight.w100,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(height: 30),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     // Follow button
//                     Row(
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Colors.black,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(40),
//                             ),
//                           ),
//                           child: const Text("Follow"),
//                         ),
//                         const SizedBox(width: 20),

//                         SvgPicture.asset(
//                           "assets/icons/bell.svg",
//                           width: 24,
//                           height: 24,
//                         ),
//                         const SizedBox(width: 20),

//                         Icon(Icons.more_vert, color: Color(0xffB3B3B3)),
//                       ],
//                     ),
//                     const SizedBox(height: 16),

//                     // Check out latest episode
//                     Container(
//                       padding: const EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         color: const Color(0xFF2A3352),
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       child: Row(
//                         children: const [
//                           Image(image: AssetImage("assets/images/1.png")),
//                           // Icon(Icons.play_circle_fill, size: 40),
//                           SizedBox(width: 12),
//                           Expanded(
//                             child: Text(
//                               "Check out the latest Episode",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                           Icon(Icons.arrow_forward_ios, color: Colors.white),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 9),

//                     // Tags
//                     Row(
//                       children: [
//                         InkWell(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => ArtiseProfileScreen(),
//                               ),
//                             );
//                           },
//                           child: BuildTag(
//                             text: "Episodes",
//                             bgColor: Colors.white,
//                             textColor: Colors.black,
//                           ),
//                         ),

//                         InkWell(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => ProfileScreen(),
//                               ),
//                             );
//                           },
//                           child: BuildTag(
//                             text: "About",
//                             bgColor: const Color(0xFF2A3352),
//                             textColor: Colors.white,
//                           ),
//                         ),

//                         InkWell(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => LikeShowScreen(),
//                               ),
//                             );
//                           },
//                           child: BuildTag(
//                             text: "You may also like",
//                             bgColor: const Color(0xFF2A3352),
//                             textColor: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 10),

//                     Row(
//                       children: [
//                         Image(image: AssetImage("assets/images/2.png")),

//                         Text(
//                           "All Episodes",
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 5),

//                     // Episode list
//                     ListView(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       children: [
//                         EpisodeItem(
//                           imageUrl: 'assets/images/r.png',
//                           title: 'Episode 1: "The Kickoff Chaos"',
//                           subtitle:
//                               'A no-filter introduction, unpacking the wilde...',
//                           date: '21 Aug',
//                           duration: '33min left',
//                           showIcon: true, //
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),

//               Container(
//                 height: 90,
//                 // color: Colors.amber,
//                 child: Stack(
//                   clipBehavior:
//                       Clip.none, // zaroori hai overlap dikhane ke liye
//                   children: [
//                     // 1️⃣ Upar wali Row
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 12,
//                         vertical: 8,
//                       ),
//                       color: Colors.transparent,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           SvgPicture.asset(
//                             "assets/icons/Group.svg",
//                             width: 24,
//                             height: 24,
//                           ),
//                           const SizedBox(width: 10),
//                           SvgPicture.asset(
//                             "assets/icons/gala_add.svg",
//                             color: Colors.white,
//                             width: 24,
//                             height: 24,
//                           ),
//                           const SizedBox(width: 10),
//                           SvgPicture.asset(
//                             "assets/icons/d.svg",
//                             width: 24,
//                             height: 24,
//                           ),
//                           const SizedBox(width: 10),
//                           Icon(
//                             Icons.more_vert,
//                             size: 25,
//                             color: Color(0xffB3B3B3),
//                           ),
//                           Spacer(),
//                           Icon(
//                             Icons.pause_circle_filled,
//                             size: 30,
//                             color: Colors.white,
//                           ),
//                         ],
//                       ),
//                     ),

//                     // 2️⃣ Neeche wala Column (Episode container) with overlap
//                     Positioned(
//                       top: 30, // jitna overlap chahiye
//                       left: 12,
//                       right: 12,
//                       child: Container(
//                         height: 90,
//                         padding: const EdgeInsets.all(7),
//                         decoration: BoxDecoration(
//                           color: Color(0xff080016),
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Row(
//                           children: [
//                             Container(
//                               width: 60,
//                               height: 60,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8),
//                                 image: DecorationImage(
//                                   image: AssetImage("assets/images/r.png"),
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(width: 12),
//                             Expanded(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Episode 1: "The Kickoff Chaos"',
//                                     style: const TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                   const SizedBox(height: 4),
//                                   Text(
//                                     "WTF with Marc Maron",
//                                     maxLines: 1,
//                                     overflow: TextOverflow.ellipsis,
//                                     style: const TextStyle(
//                                       color: Colors.white70,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             SvgPicture.asset(
//                               "assets/icons/lrp.svg",
//                               width: 24,
//                               height: 24,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               SizedBox(height: 90),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
