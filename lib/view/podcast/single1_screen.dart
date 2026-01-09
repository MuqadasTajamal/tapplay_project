import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Single1Screen extends StatefulWidget {
  const Single1Screen({super.key});

  @override
  State<Single1Screen> createState() => _Single1ScreenState();
}

class _Single1ScreenState extends State<Single1Screen> {
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
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 19, right: 19),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Container with image and details
                Container(
                  // width: s.width,
                  height: 300,
                  // height: s.height * 0.5,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/r.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
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
                              padding: EdgeInsets.only(
                                top: 30,
                                left: 19,
                                right: 19,
                              ),
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
                                      image: AssetImage("assets/images/b.png"),
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
                                      image: AssetImage("assets/images/l.png"),
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

                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/Group.svg",
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 15),

                    SvgPicture.asset(
                      "assets/icons/gala_add.svg",
                      color: Colors.white,

                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 15),

                    SvgPicture.asset(
                      "assets/icons/d.svg",
                      width: 26,
                      height: 26,
                    ),
                    const SizedBox(width: 10),
                    Spacer(),
                    Icon(Icons.more_vert, size: 25, color: Color(0xffB3B3B3)),
                    const SizedBox(width: 30),
                    SvgPicture.asset(
                      "assets/icons/shuffle.svg",
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 20),

                    Icon(
                      Icons.pause_circle_filled,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Text(
                  "Every great story starts with a little disorder and this premiere episode throws you right into the storm. From the awkward silences that turn into big laughs, to bold opinions that spark unexpected debates, “The Kickoff Chaos” sets the stage for what this podcast is all about: honest, unfiltered, and unpredictable conversations. We dive into the messiness of starting fresh whether it’s first gigs, early struggles, or behind-the-scenes moments no one ever talks about. Expect laughter, heated takes, and plenty of “did that really just happen?” moments. It’s the perfect chaotic kickoff to a season that promises to never play it safe.",
                  style: TextStyle(color: Color(0xffA5A1A1)),
                ),
                const SizedBox(height: 20),

                Text(
                  "Chapters",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Container(
                  height: 90,
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Color(0xf080016),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage("assets/images/s.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Episode 1: "The Kickoff Chaos"',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "WTF with Marc Maron",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/lrp.svg",
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
