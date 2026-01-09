import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tapplay_project/components/build_tag.dart';
import 'package:tapplay_project/components/container_widget.dart';
import 'package:tapplay_project/view/podcast/like_show_screen.dart';
import 'package:tapplay_project/view/podcast/profile_screen.dart';
// import 'package:tapplay_project/components/episode_item.dart';

class AboutShowScreen extends StatefulWidget {
  const AboutShowScreen({super.key});

  @override
  State<AboutShowScreen> createState() => _AboutShowScreenState();
}

class _AboutShowScreenState extends State<AboutShowScreen> {
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 19, right: 19),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PodcastHeader(
                      imagePath: "assets/images/r.png",
                      title: "WTF with Marc Maron",
                      subtitle: "Marc Maron",
                      ratingText: "5.0 (2.4k).Stories.Celebrities",
                      iconPath: "assets/icons/error.svg",
                    ),

                    // Follow button
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

                        SvgPicture.asset(
                          "assets/icons/bell.svg",
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 20),

                        Icon(Icons.more_vert, color: Color(0xffB3B3B3)),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Check out latest episode
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2A3352),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: const [
                          Image(image: AssetImage("assets/images/1.png")),
                          // Icon(Icons.play_circle_fill, size: 40),
                          SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              "Check out the latest Episode",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.white),
                        ],
                      ),
                    ),
                    const SizedBox(height: 9),
                    // Tags
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
                            bgColor: const Color(0xFF2A3352),
                            textColor: Colors.white,
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
                            bgColor: Colors.white,
                            textColor: Colors.black,
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

                    Text(
                      "About",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),

                    Container(
                      height: s.height * 0.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/r1.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    SizedBox(height: 20),

                    Text(
                      "The WTF Podcast is all about breaking down walls and bringing listeners into conversations that feel real, unfiltered, and unpredictable. Each episode is a mix of laughter, honesty, and storytelling — whether it’s sitting down with artists, creators, or everyday people who’ve lived through unforgettable moments. From behind-the-scenes music stories and cultural deep dives to hilarious rants and raw opinions, this podcast thrives on keeping things authentic.It’s the place where music, culture, and life collide — sometimes serious, often hilarious, but always true to the vibe. If you’ve ever wanted to hear the stories that don’t make the headlines, or the thoughts people usually keep to themselves, this is the podcast for you. No script, no filter — just pure, unapologetic conversations that keep you coming back every week.",
                      style: TextStyle(color: Color(0xffFFFFFF)),
                    ),

                    SizedBox(height: 20),

                    // Row(children: [

                    // ],)
                  ],
                ),
              ),

              SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }
}
