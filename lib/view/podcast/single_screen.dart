import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:tapplay_project/components/custom_action_bottom_screen.dart';
import 'package:tapplay_project/components/custom_alart_box.dart';
import 'package:tapplay_project/components/custom_playlist_bottom_sheet.dart';
import 'package:tapplay_project/components/custom_queue_bottom_sheet.dart';
import 'package:tapplay_project/components/custom_share_sheet.dart';
import 'package:tapplay_project/controller/provider/single_provider.dart';
import 'package:tapplay_project/view/podcast/profile_screen.dart';

class SingleScreen extends StatelessWidget {
  const SingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chapters = List.generate(
      10,
      (index) => {
        'title': 'Chapter ${index + 1}: Cold Open',
        'subtitle':
            'The hosts jump straight into the mic with no script, setting the tone with raw energy, jokes, and that first spark of chaos.',
        'image': 'assets/images/s.png',
      },
    );

    return ChangeNotifierProvider(
      create: (_) => SingleProvider(),
      child: Consumer<SingleProvider>(
        builder: (context, provider, _) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: Stack(
              children: [
                // background
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

                /// MAIN BODY
                SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 120),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Episode Image + Info
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/r.png"),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 19,
                                  right: 19,
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 15),

                        /// CONTROL ROW
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  isScrollControlled: true,
                                  builder: (context) =>
                                      const CustomShareSheet(),
                                );
                              },
                              child: SvgPicture.asset(
                                "assets/icons/Group.svg",
                                width: 20,
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  builder: (_) => CustomPlaylistBottomSheet(),
                                );
                              },
                              child: SvgPicture.asset(
                                "assets/icons/gala_add.svg",
                                color: Colors.white,
                                width: 24,
                                height: 24,
                              ),
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
                                      Navigator.of(context).pop();
                                    },
                                    onCancel: () {
                                      Navigator.of(context).pop();
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
                            const Spacer(),
                            IconButton(
                              icon: const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context, // 👈 yahin call hota hai
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
                                            backgroundColor: Colors.transparent,
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
                                            backgroundColor: Colors.transparent,
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

                            const SizedBox(width: 10),

                            /// SHUFFLE
                            InkWell(
                              onTap: () => provider.toggleShuffle(),
                              child: SvgPicture.asset(
                                "assets/icons/shuffle.svg",
                                color: provider.isActive
                                    ? Colors.green
                                    : Colors.white,
                                height: 24,
                                width: 24,
                              ),
                            ),
                            const SizedBox(width: 10),

                            /// PLAY / PAUSE
                            InkWell(
                              onTap: () => provider.playPause(),
                              child: Icon(
                                provider.isPlaying
                                    ? Icons.pause_circle_filled
                                    : Icons.play_circle_fill,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),

                        const SizedBox(height: 15),

                        Text(
                          "Every great story starts with a little disorder and this premiere episode throws you right into the storm. From the awkward silences that turn into big laughs, to bold opinions that spark unexpected debates, “The Kickoff Chaos” sets the stage for what this podcast is all about: honest, unfiltered, and unpredictable conversations. We dive into the messiness of starting fresh whether it’s first gigs, early struggles, or behind-the-scenes moments no one ever talks about. Expect laughter, heated takes, and plenty of “did that really just happen?” moments. It’s the perfect chaotic kickoff to a season that promises to never play it safe.",
                          style: const TextStyle(color: Colors.white60),
                        ),

                        const SizedBox(height: 15),

                        /// CHAPTER LIST
                        const Text(
                          "Chapters",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: chapters.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                ListTile(
                                  leading: Image.asset(
                                    chapters[index]['image']!,
                                    height: 55,
                                  ),
                                  title: Text(
                                    chapters[index]['title']!,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  subtitle: Text(
                                    chapters[index]['subtitle']!,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  trailing: IconButton(
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
                                          image: chapters[index]['image']!,
                                          title: chapters[index]['title']!,
                                          subtitle:
                                              "The hosts jump straight into the mic with.......",
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
                                            ListTile(
                                              leading: const Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                              ),
                                              title: const Text(
                                                "Play from this chapter",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const Divider(color: Colors.white30),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                /// MINI PLAYER
                if (provider.isPlaying && provider.selectedEpisodeIndex != null)
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
                            onTap: () {},
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
        },
      ),
    );
  }
}
