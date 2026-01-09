import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tapplay_project/components/custom_share_sheet.dart';

class SingleScreen extends StatefulWidget {
  const SingleScreen({super.key});

  @override
  State<SingleScreen> createState() => _SingleScreenState();
}

class _SingleScreenState extends State<SingleScreen> {
  int? selectedEpisodeIndex;
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;

    final chapters = List.generate(
      10,
      (index) => {
        'title': 'Chapter ${index + 1}: Cold Open',
        'subtitle':
            'The hosts jump straight into the mic with no script, setting the tone with raw energy, jokes, and that first spark of chaos.',
        'image': 'assets/images/s.png',
      },
    );

    // final chapters = List.generate(
    //   10,
    //   (index) => {
    //     'title': 'Chapter ${index + 1}: Cold Open',
    //     'subtitle':
    //         'The hosts jump straight into the mic with no script, setting the tone with raw energy, jokes, and that first spark of chaos.',
    //     'image': 'assets/images/s.png',
    //   },
    // );

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// ================= MAIN BODY =================
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 120),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: s.height * 0.5,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/r.png"),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: SvgPicture.asset(
                                        "assets/icons/error.svg",
                                        height: 24,
                                        width: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Episode 1: “The Kickoff Chaos”",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                          "assets/images/b.png",
                                        ),
                                        height: 20,
                                      ),
                                      Text(
                                        "WTF with Marc Maron",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      // SizedBox(width: 4),
                                      Text(
                                        "21 Aug . 33min left",
                                        style: TextStyle(
                                          color: Color(0xffC5C5C5),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w100,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Image(
                                        image: AssetImage(
                                          "assets/images/l.png",
                                        ),
                                        // height: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),

                  /// ================= CONTROL ROW =================
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

                      const SizedBox(width: 15),
                      SvgPicture.asset("assets/icons/gala_add.svg", width: 24),
                      const SizedBox(width: 15),
                      SvgPicture.asset("assets/icons/d.svg", width: 24),
                      const Spacer(),
                      SvgPicture.asset("assets/icons/shuffle.svg", width: 24),
                      const SizedBox(width: 20),

                      /// ▶ / ⏸ PLAY PAUSE
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (isPlaying) {
                              // ⏸ pause
                              isPlaying = false;
                              selectedEpisodeIndex = null;
                            } else {
                              // ▶ play
                              isPlaying = true;
                              selectedEpisodeIndex = 0;
                            }
                          });
                        },
                        child: Icon(
                          isPlaying
                              ? Icons.pause_circle_filled
                              : Icons.play_circle_fill,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  /// ================= CHAPTER LIST =================
                  const Text(
                    "Chapters",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: chapters.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.asset(
                          chapters[index]['image']!,
                          width: 55,
                        ),
                        title: Text(
                          chapters[index]['title']!,
                          style: const TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          chapters[index]['subtitle']!,
                          style: const TextStyle(color: Colors.grey),
                        ),

                        /// 🔹 MORE ICON → SHOW MINI PLAYER
                        ///
                        trailing: InkWell(
                          onTap: () {
                            setState(() {
                              selectedEpisodeIndex = index;
                              isPlaying = true;
                            });
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: const Color(0xff1C2431),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(24),
                                ),
                              ),
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // 🔹 Top handle
                                      Center(
                                        child: Container(
                                          width: 40,
                                          height: 4,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.circular(
                                              2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),

                                      // 🔹 Header row: image + text column
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            child: Image.asset(
                                              chapters[index]['image']!,
                                              width: 60,
                                              height: 60,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(width: 16),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  chapters[index]['title']!,
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(height: 6),
                                                const Text(
                                                  "WTF with Marc Maron",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      const SizedBox(height: 20),
                                      const Divider(color: Colors.grey),
                                      const SizedBox(height: 10),
                                      ListTile(
                                        leading: InkWell(
                                          onTap: () {
                                            showModalBottomSheet(
                                              context: context,
                                              backgroundColor:
                                                  Colors.transparent,
                                              isScrollControlled: true,
                                              builder: (context) {
                                                return const CustomShareSheet();
                                              },
                                            );
                                          },
                                          child: const Icon(
                                            Icons.share,
                                            color: Colors.white,
                                          ),
                                        ),

                                        title: InkWell(
                                          onTap: () {
                                            showModalBottomSheet(
                                              context: context,
                                              backgroundColor:
                                                  Colors.transparent,
                                              isScrollControlled: true,
                                              builder: (context) {
                                                return const CustomShareSheet();
                                              },
                                            );
                                          },
                                          child: Text(
                                            "Share",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // 🔹 Play button
                                      ListTile(
                                        leading: const Icon(
                                          Icons.play_arrow,
                                          color: Colors.white,
                                        ),
                                        title: const Text(
                                          "Play",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onTap: () {
                                          Navigator.pop(context);
                                          print("Play clicked");
                                        },
                                      ),

                                      // 🔹 Share button
                                    ],
                                  ),
                                );
                              },
                            );

                            // showModalBottomSheet(
                            //   context: context,
                            //   backgroundColor: const Color(0xff1C2431),
                            //   shape: const RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.vertical(
                            //       top: Radius.circular(24),
                            //     ),
                            //   ),
                            //   builder: (context) {
                            //     return Padding(
                            //       padding: const EdgeInsets.all(20),
                            //       child: Column(
                            //         mainAxisSize: MainAxisSize.min,
                            //         crossAxisAlignment:
                            //             CrossAxisAlignment.start,
                            //         children: [
                            //           // 🔹 Top handle
                            //           Center(
                            //             child: Container(
                            //               width: 40,
                            //               height: 4,
                            //               decoration: BoxDecoration(
                            //                 color: Colors.grey,
                            //                 borderRadius: BorderRadius.circular(
                            //                   2,
                            //                 ),
                            //               ),
                            //             ),
                            //           ),
                            //           const SizedBox(height: 20),

                            //           // 🔹 Header row: image + text column
                            //           Row(
                            //             crossAxisAlignment:
                            //                 CrossAxisAlignment.start,
                            //             children: [
                            //               // Image at start
                            //               ClipRRect(
                            //                 borderRadius: BorderRadius.circular(
                            //                   12,
                            //                 ),
                            //                 child: Image.asset(
                            //                   chapters[index]['image']!,
                            //                   width: 60,
                            //                   height: 60,
                            //                   fit: BoxFit.cover,
                            //                 ),
                            //               ),
                            //               const SizedBox(width: 16),

                            //               // Column with 2 texts
                            //               Expanded(
                            //                 child: Column(
                            //                   crossAxisAlignment:
                            //                       CrossAxisAlignment.start,
                            //                   children: [
                            //                     Text(
                            //                       chapters[index]['title']!,
                            //                       style: const TextStyle(
                            //                         color: Colors.white,
                            //                         fontSize: 18,
                            //                         fontWeight: FontWeight.bold,
                            //                       ),
                            //                     ),
                            //                     const SizedBox(height: 6),
                            //                     const Text(
                            //                       "WTF with Marc Maron",
                            //                       style: TextStyle(
                            //                         color: Colors.grey,
                            //                         fontSize: 14,
                            //                         fontWeight: FontWeight.w400,
                            //                       ),
                            //                     ),
                            //                   ],
                            //                 ),
                            //               ),
                            //             ],
                            //           ),

                            //           const SizedBox(height: 20),
                            //           const Divider(color: Colors.grey),

                            //           const SizedBox(height: 10),

                            //           ListTile(
                            //             leading: const Icon(
                            //               Icons.playlist_add,
                            //               color: Colors.white,
                            //             ),
                            //             title: const Text(
                            //               "Add to Playlist",
                            //               style: TextStyle(color: Colors.white),
                            //             ),
                            //             onTap: () {
                            //               Navigator.pop(context);
                            //             },
                            //           ),

                            //           // // 🔹 Row icons: Share & Play
                            //           // Row(
                            //           //   mainAxisAlignment:
                            //           //       MainAxisAlignment.spaceBetween,
                            //           //   children: [
                            //           //     // Share button
                            //           //     InkWell(
                            //           //       onTap: () {
                            //           //         Navigator.pop(context);
                            //           //         // Share logic
                            //           //         print("Share clicked");
                            //           //       },
                            //           //       child: Row(
                            //           //         children: const [
                            //           //           Icon(
                            //           //             Icons.share,
                            //           //             color: Colors.white,
                            //           //           ),
                            //           //           SizedBox(width: 8),
                            //           //           Text(
                            //           //             "Share",
                            //           //             style: TextStyle(
                            //           //               color: Colors.white,
                            //           //             ),
                            //           //           ),
                            //           //         ],
                            //           //       ),
                            //           //     ),
                            //           //     ListTile(
                            //           //       leading: const Icon(
                            //           //         Icons.play_arrow,
                            //           //         color: Colors.white,
                            //           //       ),
                            //           //       title: const Text(
                            //           //         "Play",
                            //           //         style: TextStyle(
                            //           //           color: Colors.white,
                            //           //         ),
                            //           //       ),
                            //           //       onTap: () {
                            //           //         Navigator.pop(context);
                            //           //       },
                            //           //     ),

                            //           //     // Play button
                            //           //     // InkWell(
                            //           //     //   onTap: () {
                            //           //     //     Navigator.pop(context);
                            //           //     //     // Play logic
                            //           //     //     print("Play clicked");
                            //           //     //   },
                            //           //     //   child: Row(
                            //           //     //     children: const [
                            //           //     //       Icon(
                            //           //     //         Icons.play_arrow,
                            //           //     //         color: Colors.white,
                            //           //     //       ),
                            //           //     //       SizedBox(width: 8),
                            //           //     //       Text(
                            //           //     //         "Play",
                            //           //     //         style: TextStyle(
                            //           //     //           color: Colors.white,
                            //           //     //         ),
                            //           //     //       ),
                            //           //     //     ],
                            //           //     //   ),
                            //           //     // ),
                            //           //   ],
                            //           // ),
                            //           // const SizedBox(height: 20),
                            //         ],
                            //       ),
                            //     );
                            //   },
                            // );

                            /// 🔹 BOTTOM SHEET (LOGIC SEPARATE)
                            // showModalBottomSheet(
                            //   context: context,
                            //   backgroundColor: const Color(0xff1C2431),
                            //   shape: const RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.vertical(
                            //       top: Radius.circular(24),
                            //     ),
                            //   ),
                            //   builder: (context) {
                            //     return Padding(
                            //       padding: const EdgeInsets.all(20),
                            //       child: Column(
                            //         mainAxisSize: MainAxisSize.min,
                            //         crossAxisAlignment:
                            //             CrossAxisAlignment.start,
                            //         children: [
                            //           Center(
                            //             child: Container(
                            //               width: 40,
                            //               height: 4,
                            //               decoration: BoxDecoration(
                            //                 color: Colors.grey,
                            //                 // borderRadius: BorderRadius.circular(
                            //                 //   10,
                            //                 // ),
                            //               ),
                            //             ),
                            //           ),
                            //           const SizedBox(height: 20),

                            //           Text(
                            //             chapters[index]['title']!,
                            //             style: const TextStyle(
                            //               color: Colors.white,
                            //               fontSize: 18,
                            //               fontWeight: FontWeight.bold,
                            //             ),
                            //           ),

                            //           const SizedBox(height: 20),

                            //           ListTile(
                            //             leading: const Icon(
                            //               Icons.play_arrow,
                            //               color: Colors.white,
                            //             ),
                            //             title: const Text(
                            //               "Play",
                            //               style: TextStyle(color: Colors.white),
                            //             ),
                            //             onTap: () {
                            //               Navigator.pop(context);
                            //             },
                            //           ),

                            //           ListTile(
                            //             leading: const Icon(
                            //               Icons.playlist_add,
                            //               color: Colors.white,
                            //             ),
                            //             title: const Text(
                            //               "Add to Playlist",
                            //               style: TextStyle(color: Colors.white),
                            //             ),
                            //             onTap: () {
                            //               Navigator.pop(context);
                            //             },
                            //           ),

                            //           ListTile(
                            //             leading: const Icon(
                            //               Icons.share,
                            //               color: Colors.white,
                            //             ),
                            //             title: const Text(
                            //               "Share",
                            //               style: TextStyle(color: Colors.white),
                            //             ),
                            //             onTap: () {
                            //               Navigator.pop(context);
                            //             },
                            //           ),
                            //         ],
                            //       ),
                            //     );
                            //   },
                            // );
                          },
                          child: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),

                        // trailing: InkWell(
                        //   onTap: () {
                        //     setState(() {
                        //       selectedEpisodeIndex = index;
                        //       isPlaying = true;
                        //     });
                        //   },
                        //   child: const Icon(
                        //     Icons.more_vert,
                        //     color: Colors.white,
                        //   ),
                        // ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          /// ================= MINI PLAYER =================
          if (isPlaying && selectedEpisodeIndex != null)
            Positioned(
              left: 10,
              right: 10,
              bottom: 10,
              child: Container(
                height: 80,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xff1C2431),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      chapters[selectedEpisodeIndex!]['image']!,
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chapters[selectedEpisodeIndex!]['title']!,
                            style: const TextStyle(color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Text(
                            "WTF with Marc Maron",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),

                    /// ❌ CLOSE / PAUSE MINI PLAYER
                    InkWell(
                      onTap: () {
                        setState(() {
                          isPlaying = false;
                          selectedEpisodeIndex = null;
                        });
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
