import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tapplay_project/components/build_tag.dart';
import 'package:tapplay_project/components/container_widget.dart';
import 'package:tapplay_project/view/podcast/about_show_screen.dart';
import 'package:tapplay_project/view/podcast/profile_screen.dart';

class LikeShowScreen extends StatefulWidget {
  const LikeShowScreen({super.key});

  @override
  State<LikeShowScreen> createState() => _LikeShowScreenState();
}

class _LikeShowScreenState extends State<LikeShowScreen> {
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
                            textColor: Colors.black,
                            bgColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // Image(image: AssetImage("assets/images/2.png")),
                    Text(
                      "You may also like",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),

                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: s.height * 0.4,
                                    decoration: BoxDecoration(
                                      // color: Colors.amber,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/g.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  const SizedBox(height: 10),

                                  Text(
                                    "Andrew Schulz",
                                    style: TextStyle(color: Colors.white),
                                  ),

                                  // const SizedBox(height: 10),
                                  Text(
                                    "The Flagrant Podcast",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 10),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: s.height * 0.4,
                                    decoration: BoxDecoration(
                                      // color: Colors.amber,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/b.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  const SizedBox(height: 10),

                                  Text(
                                    "Trevor Noah",
                                    style: TextStyle(color: Colors.white),
                                  ),

                                  // const SizedBox(height: 10),
                                  Text(
                                    "What Now? Podcast",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: s.height * 0.4,
                                    decoration: BoxDecoration(
                                      // color: Colors.amber,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/g.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  const SizedBox(height: 10),

                                  Text(
                                    "Andrew Schulz",
                                    style: TextStyle(color: Colors.white),
                                  ),

                                  // const SizedBox(height: 10),
                                  Text(
                                    "The Flagrant Podcast",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 10),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: s.height * 0.4,
                                    decoration: BoxDecoration(
                                      // color: Colors.amber,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/b.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  const SizedBox(height: 10),

                                  Text(
                                    "Trevor Noah",
                                    style: TextStyle(color: Colors.white),
                                  ),

                                  // const SizedBox(height: 10),
                                  Text(
                                    "What Now? Podcast",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
