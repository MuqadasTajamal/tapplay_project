import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tapplay_project/components/custom_podcast_bottomsheet.dart';
import 'package:tapplay_project/components/custom_share_sheet.dart';
import 'package:tapplay_project/components/info_card.dart';
import 'package:tapplay_project/view/podcast/rate_podcast_screen.dart';
import 'package:tapplay_project/view/podcast/single_screen.dart';

class CustomFollowBar extends StatefulWidget {
  const CustomFollowBar({super.key});

  @override
  State<CustomFollowBar> createState() => _CustomFollowBarState();
}

class _CustomFollowBarState extends State<CustomFollowBar> {
  bool isActive = false;
  bool un = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  un = !un;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(un ? "Following" : "Follow"),
            ),
            const SizedBox(width: 20),

            InkWell(
              onTap: () {
                setState(() {
                  isActive = !isActive;
                });
              },
              child: SvgPicture.asset(
                isActive
                    ? "assets/icons/b.svg" // image when clicked
                    : "assets/icons/bell.svg", // default image
                width: 24,
              ),
              // Text(isActive ? "Active" : "Inactive"),
            ),
            const SizedBox(width: 15),
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {
                showModalBottomSheet(
                  context: context, // 👈 yahin call hota hai
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (_) => CustomPodcastBottomsheet(
                    image: "assets/images/r.png",
                    title: "WTF with Marc Maron",
                    // image: chapters[index]['image']!,
                    // title: chapters[index]['title']!,
                    subtitle:
                        "The hosts jump straight into the mic with.......",
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
                          leading: const Icon(Icons.share, color: Colors.white),
                          title: const Text(
                            "Share ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>))
                        },
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RatePodcastScreen(),
                              ),
                            );
                          },
                          child: ListTile(
                            leading: const Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                            ),
                            title: const Text(
                              "Rate Podcast",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: const Text(
                          "×",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        title: const Text(
                          "Stop following",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

            // const Icon(Icons.more_vert, color: Color(0xffB3B3B3)),
          ],
        ),

        const SizedBox(height: 12),

        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SingleScreen()),
            );
          },
          child: const InfoCard(
            imagePath: "assets/images/1.png",
            text: "Check out the latest Episode",
          ),
        ),
      ],
    );
  }
}
