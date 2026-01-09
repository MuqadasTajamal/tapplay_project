import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tapplay_project/components/build_tag.dart';
import 'package:tapplay_project/components/custom_action_bottom_screen.dart';
import 'package:tapplay_project/components/custom_alart_box.dart';
import 'package:tapplay_project/components/custom_follow_bar.dart';
import 'package:tapplay_project/components/custom_playlist_bottom_sheet.dart';
import 'package:tapplay_project/components/custom_podcast_bottomsheet.dart';
import 'package:tapplay_project/components/custom_queue_bottom_sheet.dart';
import 'package:tapplay_project/components/custom_share_sheet.dart';
import 'package:tapplay_project/components/episode_item.dart';
import 'package:tapplay_project/components/filter_bottom_sheet.dart';
import 'package:tapplay_project/components/image_text_card.dart';
import 'package:tapplay_project/components/info_card.dart';
import 'package:tapplay_project/view/podcast/about_show_screen.dart';
import 'package:tapplay_project/view/podcast/like_show_screen.dart';
import 'package:tapplay_project/view/podcast/rate_podcast_screen.dart';
import 'package:tapplay_project/view/podcast/single_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int? selectedEpisodeIndex; // currently playing episode
  bool isActive = false;
  bool un = false;

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
                    CustomFollowBar(),
                    const SizedBox(height: 12),

                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileScreen(),
                              ),
                            );
                          },
                          child: BuildTag(
                            text: "Episodes",
                            bgColor: Colors.white,
                            textColor: Colors.black,
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AboutShowScreen(),
                              ),
                            );
                          },
                          child: BuildTag(
                            text: "About",
                            bgColor: const Color(0xFF2A3352),
                            textColor: Colors.white,
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LikeShowScreen(),
                              ),
                            );
                          },
                          child: BuildTag(
                            text: "You may also like",
                            bgColor: const Color(0xFF2A3352),
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,
                              builder: (context) {
                                return const FilterBottomSheet();
                              },
                            );
                          },
                          child: Image(
                            image: AssetImage("assets/images/2.png"),
                          ),
                        ),
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
                              showIcon: index == 0,
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
                                    width: 20,
                                  ),
                                  // Text("Share", style: TextStyle(color: Colors.white)),
                                ),

                                const SizedBox(width: 10),
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      builder: (_) =>
                                          CustomPlaylistBottomSheet(),
                                    );
                                  },
                                  child: SvgPicture.asset(
                                    "assets/icons/gala_add.svg",
                                    color: Colors.white,
                                    width: 24,
                                    height: 24,
                                  ),
                                ),

                                // SvgPicture.asset(
                                //   "assets/icons/gala_add.svg",
                                //   color: Colors.white,
                                //   width: 24,
                                //   height: 24,
                                // ),
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

                                const SizedBox(width: 10),
                                IconButton(
                                  icon: const Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context:
                                          context, // 👈 yahin call hota hai
                                      backgroundColor: Colors.transparent,
                                      isScrollControlled: true,
                                      builder: (_) => CustomActionBottomSheet(
                                        image: "assets/images/r.png",
                                        title: 'Episode 1: "The Kickoff Chaos"',
                                        subtitle: "WTF with Marc Maron",
                                        tiles: [
                                          InkWell(
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
                                            child: ListTile(
                                              leading: const Icon(
                                                Icons.share,
                                                color: Colors.white,
                                              ),
                                              title: const Text(
                                                "Share this chapter",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),

                                          // InkWell(
                                          //   onTap: () {
                                          //     void showPodcastBottomSheet(
                                          //       BuildContext context,
                                          //     ) {
                                          //       showModalBottomSheet(
                                          //         context: context,
                                          //         isScrollControlled: true,
                                          //         backgroundColor:
                                          //             Colors.transparent,
                                          //         builder: (_) =>
                                          //             CustomPlaylistBottomSheet(),
                                          //       );
                                          //     }
                                          //   },
                                          //   child: ListTile(
                                          //     leading: const Icon(
                                          //       Icons.add_circle_outline,
                                          //       color: Colors.white,
                                          //     ),
                                          //     title: const Text(
                                          //       "Add to playlist",
                                          //       style: TextStyle(
                                          //         color: Colors.white,
                                          //       ),
                                          //     ),
                                          //   ),
                                          // ),
                                          InkWell(
                                            onTap: () {
                                              showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                builder: (_) =>
                                                    CustomPlaylistBottomSheet(),
                                              );
                                            },
                                            child: ListTile(
                                              leading: Icon(
                                                Icons.add_circle_outline,
                                                color: Colors.white,
                                              ),
                                              title: Text(
                                                "Add to playlist",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),

                                          InkWell(
                                            onTap: () {
                                              showModalBottomSheet(
                                                context: context,
                                                backgroundColor:
                                                    Colors.transparent,
                                                isScrollControlled: true,
                                                builder: (_) =>
                                                    CustomQueueBottomSheet(),
                                              );
                                            },
                                            child: ListTile(
                                              leading: SvgPicture.asset(
                                                "assets/icons/Vector.svg",
                                                width: 15,
                                                height: 15,
                                              ),
                                              title: const Text(
                                                "Add to Queue",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProfileScreen(),
                                                ),
                                              );
                                            },
                                            child: ListTile(
                                              leading: SvgPicture.asset(
                                                "assets/icons/episode.svg",
                                                width: 15,
                                                color: Colors.white,
                                              ),
                                              // const Icon(
                                              //   Icons.play_arrow,
                                              //   color: Colors.white,
                                              // ),
                                              title: const Text(
                                                "Go to Episode",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),

                                // const Icon(
                                //   Icons.more_vert,
                                //   color: Color(0xffB3B3B3),
                                // ),
                                const Spacer(),

                                /// 🔹 PLAY / PAUSE
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (isPlaying) {
                                        // Already playing → navigate to new screen
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                SingleScreen(), // apna screen yahan
                                          ),
                                        );
                                      } else {
                                        // Not playing → start playing
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

                                // InkWell(
                                //   onTap: () {
                                //     setState(() {
                                //       if (isPlaying) {
                                //         selectedEpisodeIndex = null;
                                //       } else {
                                //         selectedEpisodeIndex = index;
                                //       }
                                //     });
                                //   },
                                //   child: Icon(
                                //     isPlaying
                                //         ? Icons.pause_circle_filled
                                //         : Icons.play_circle_fill,
                                //     size: 30,
                                //     color: Colors.white,
                                //   ),
                                // ),
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
