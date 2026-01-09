// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:tapplay_project/components/episode_item.dart';
// import 'package:tapplay_project/components/image_text_card.dart';
// import 'package:tapplay_project/components/info_card.dart';
// import 'package:tapplay_project/view/podcast/single_screen.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   int? selectedEpisodeIndex; // 🔹 currently playing episode

//   @override
//   Widget build(BuildContext context) {
//     var s = MediaQuery.of(context).size;

//     // Sample episode data
//     final episodes = List.generate(
//       10,
//       (index) => {
//         'title': 'Episode ${index + 1}: "The Kickoff Chaos"',
//         'subtitle': 'A no-filter introduction, unpacking the wilde...',
//         'date': '21 Aug',
//         'duration': '33min left',
//         'image': 'assets/images/r.png',
//       },
//     );

//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Stack(
//         children: [
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("assets/images/bg.jpg"),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(top: 30, left: 19, right: 19),
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.only(bottom: 120),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ImageTextCard(
//                       imagePath: "assets/images/r.png",
//                       title: "WTF with Marc Maron",
//                       subtitle: "Marc Maron",
//                       ratingText: "5.0 (2.4k).Stories.Celebrities",
//                       iconPath: "assets/icons/error.svg",
//                       height: 300,
//                     ),
//                     const SizedBox(height: 20),

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
//                         SvgPicture.asset("assets/icons/bell.svg", width: 24),
//                         const SizedBox(width: 20),
//                         const Icon(Icons.more_vert, color: Color(0xffB3B3B3)),
//                       ],
//                     ),
//                     const SizedBox(height: 16),

//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => SingleScreen(),
//                           ),
//                         );
//                       },
//                       child: InfoCard(
//                         imagePath: "assets/images/1.png",
//                         text: "Check out the latest Episode",
//                       ),
//                     ),
//                     const SizedBox(height: 9),
//                     // CustomTagBar(
//                     //   selectedIndex: 0,
//                     //   episodesScreen: (),
//                     //   aboutScreen: AboutShowScreen(),
//                     //   likeScreen: LikeShowScreen(),
//                     // ),
//                     const SizedBox(height: 10),
//                     Row(
//                       children: const [
//                         Image(image: AssetImage("assets/images/2.png")),
//                         SizedBox(width: 8),
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
//                     const SizedBox(height: 10),

//                     /// 🔹 LISTVIEW BUILDER
//                     ListView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: episodes.length,
//                       itemBuilder: (context, index) {
//                         final episode = episodes[index];
//                         final isPlaying = selectedEpisodeIndex == index;

//                         return Column(
//                           children: [
//                             EpisodeItem(
//                               imageUrl: episode['image']!,
//                               title: episode['title']!,
//                               subtitle: episode['subtitle']!,
//                               date: episode['date']!,
//                               duration: episode['duration']!,
//                               showIcon: false,
//                             ),

//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 SvgPicture.asset(
//                                   "assets/icons/Group.svg",
//                                   width: 24,
//                                   height: 24,
//                                 ),
//                                 const SizedBox(width: 10),
//                                 SvgPicture.asset(
//                                   "assets/icons/gala_add.svg",
//                                   color: Colors.white,
//                                   width: 24,
//                                   height: 24,
//                                 ),
//                                 const SizedBox(width: 10),
//                                 SvgPicture.asset(
//                                   "assets/icons/d.svg",
//                                   width: 24,
//                                   height: 24,
//                                 ),
//                                 const SizedBox(width: 10),
//                                 Icon(
//                                   Icons.more_vert,
//                                   size: 25,
//                                   color: const Color(0xffB3B3B3),
//                                 ),
//                                 Spacer(),

//                                 /// 🔹 PLAY BUTTON
//                                 InkWell(
//                                   onTap: () {
//                                     setState(() {
//                                       if (isPlaying) {
//                                         // pause if already playing
//                                         selectedEpisodeIndex = null;
//                                       } else {
//                                         // play this episode
//                                         selectedEpisodeIndex = index;
//                                       }
//                                     });
//                                   },
//                                   child: Icon(
//                                     isPlaying
//                                         ? Icons.pause_circle_filled
//                                         : Icons.play_circle_fill,
//                                     size: 30,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const Divider(color: Colors.white),
//                           ],
//                         );
//                       },
//                     ),
//                     const SizedBox(height: 20),
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           /// 🔹 MINI PLAYER
//           if (selectedEpisodeIndex != null)
//             Positioned(
//               left: 1,
//               right: 1,
//               bottom: 2,
//               child: Container(
//                 height: 80,
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   // color: const Color(0xf080016),
//                   borderRadius: BorderRadius.circular(20),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.5),
//                       blurRadius: 10,
//                     ),
//                   ],
//                 ),
//                 child: Row(
//                   children: [
//                     ClipRRect(
//                       // borderRadius: BorderRadius.circular(12),
//                       child: Image.asset(
//                         "assets/images/r.png",
//                         width: 50,
//                         height: 50,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     const SizedBox(width: 12),

//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Episode 1: "The Kickoff Chaos"',
//                           style: TextStyle(color: Colors.white),
//                           overflow: TextOverflow.ellipsis,
//                         ),

//                         Text(
//                           'WTF with Marc Maron',
//                           style: TextStyle(color: Colors.white),
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ],
//                     ),

//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => SingleScreen(),
//                           ),
//                         );
//                       },
//                       child: SvgPicture.asset(
//                         "assets/icons/lrp.svg",
//                         width: 30,
//                         height: 30,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tapplay_project/components/custom_alart_box.dart';
import 'package:tapplay_project/components/custom_share_sheet.dart';
import 'package:tapplay_project/components/episode_item.dart';
import 'package:tapplay_project/components/image_text_card.dart';
import 'package:tapplay_project/components/info_card.dart';
import 'package:tapplay_project/view/podcast/single_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int? selectedEpisodeIndex; // currently playing episode

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;

    final episodes = List.generate(
      10,
      (index) => {
        'title': 'Episode ${index + 1}: "The Kickoff Chaos"',
        'subtitle': 'A no-filter introduction, unpacking the wilde...',
        'date': '21 Aug',
        'duration': '33min left',
        'image': 'assets/images/r.png',
      },
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          /// 🔹 BACKGROUND
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 19, right: 19),
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 120),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImageTextCard(
                      imagePath: "assets/images/r.png",
                      title: "WTF with Marc Maron",
                      subtitle: "Marc Maron",
                      ratingText: "5.0 (2.4k).Stories.Celebrities",
                      iconPath: "assets/icons/error.svg",
                      height: 300,
                    ),

                    const SizedBox(height: 20),

                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          child: const Text("Follow"),
                        ),
                        const SizedBox(width: 20),
                        SvgPicture.asset("assets/icons/bell.svg", width: 24),
                        const SizedBox(width: 20),
                        const Icon(Icons.more_vert, color: Color(0xffB3B3B3)),
                      ],
                    ),

                    const SizedBox(height: 16),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SingleScreen(),
                          ),
                        );
                      },
                      child: const InfoCard(
                        imagePath: "assets/images/1.png",
                        text: "Check out the latest Episode",
                      ),
                    ),

                    const SizedBox(height: 16),

                    Row(
                      children: const [
                        Image(image: AssetImage("assets/images/2.png")),
                        SizedBox(width: 8),
                        Text(
                          "All Episodes",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    /// 🔹 EPISODES LIST
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: episodes.length,
                      itemBuilder: (context, index) {
                        final episode = episodes[index];
                        final isPlaying = selectedEpisodeIndex == index;

                        return Column(
                          children: [
                            EpisodeItem(
                              imageUrl: episode['image']!,
                              title: episode['title']!,
                              subtitle: episode['subtitle']!,
                              date: episode['date']!,
                              duration: episode['duration']!,
                              showIcon: false,
                            ),

                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      backgroundColor: Colors.transparent,
                                      isScrollControlled: true,
                                      builder: (context) {
                                        return const CustomShareSheet();
                                      },
                                    );
                                  },
                                  child: SvgPicture.asset(
                                    "assets/icons/Group.svg",
                                    width: 24,
                                  ),
                                  // Text("Share", style: TextStyle(color: Colors.white)),
                                ),

                                // SvgPicture.asset(
                                //   "assets/icons/Group.svg",
                                //   width: 24,
                                //   height: 24,
                                // ),
                                const SizedBox(width: 10),
                                SvgPicture.asset(
                                  "assets/icons/gala_add.svg",
                                  color: Colors.white,
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(width: 10),

                                InkWell(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => CustomAlertBox(
                                        title: "Download File",
                                        subtitle:
                                            "Keep the track on your device for offline listering",
                                        onConfirm: () {
                                          // Put your download code here
                                          Navigator.of(
                                            context,
                                          ).pop(); // Close the alert after confirming
                                        },
                                        onCancel: () {
                                          Navigator.of(
                                            context,
                                          ).pop(); // Just close the alert
                                        },
                                      ),
                                    );
                                  },
                                  child: SvgPicture.asset(
                                    "assets/icons/d.svg",
                                    width: 24,
                                    height: 24,
                                  ),
                                ),

                                // InkWell(
                                //   onTap: () {
                                //     Navigator.push(context,MaterialPageRoute(builder: (context)=>CustomAlartBox()))
                                //   },
                                //   child: SvgPicture.asset(
                                //     "assets/icons/d.svg",
                                //     width: 24,
                                //     height: 24,
                                //   ),
                                // ),
                                const SizedBox(width: 10),
                                const Icon(
                                  Icons.more_vert,
                                  color: Color(0xffB3B3B3),
                                ),
                                const Spacer(),

                                /// 🔹 PLAY / PAUSE
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (isPlaying) {
                                        selectedEpisodeIndex = null;
                                      } else {
                                        selectedEpisodeIndex = index;
                                      }
                                    });
                                  },
                                  child: Icon(
                                    isPlaying
                                        ? Icons.pause_circle_filled
                                        : Icons.play_circle_fill,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),

                            const Divider(color: Colors.white),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// 🔹 MINI PLAYER
          if (selectedEpisodeIndex != null)
            Positioned(
              left: 8,
              right: 8,
              bottom: 8,
              child: Container(
                height: 80,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/r.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 12),

                    /// 🔹 FIXED (NO RED SCREEN)
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Episode 1: "The Kickoff Chaos"',
                            style: TextStyle(color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'WTF with Marc Maron',
                            style: TextStyle(color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SingleScreen(),
                          ),
                        );
                      },
                      child: SvgPicture.asset(
                        "assets/icons/lrp.svg",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
