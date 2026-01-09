import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tapplay_project/components/custom_share_sheet.dart';

class Portcast extends StatefulWidget {
  const Portcast({super.key});

  @override
  State<Portcast> createState() => _PortcastState();
}

class _PortcastState extends State<Portcast> {
  bool isActive = false;
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
            image: AssetImage("assets/images/r.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 19, right: 19),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 30,
                  ),
                  Text(
                    "Playing From Podcast",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(Icons.more_vert, color: Color(0xffB3B3B3), size: 20),
                ],
              ),
              Spacer(),
              Container(
                height: 90,
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  // color: Color(0xf080016),
                  // borderRadius: BorderRadius.circular(12),
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
                    // SvgPicture.asset(
                    //   "assets/icons/lrp.svg",
                    //   width: 24,
                    //   height: 24,
                    // ),
                  ],
                ),
              ),

              // LinearProgressIndicator(
              //   value: 2,
              //   color: Colors.white,
              //   backgroundColor: Color.fromARGB(118, 61, 63, 42),
              // ),
              LinearProgressIndicator(
                borderRadius: BorderRadius.circular(20),
                value: 0.3, // 70% directly
                color: Colors.white, // filled color
                backgroundColor: Colors.grey, // remaining color
                minHeight: 7,
              ),
              SizedBox(height: 3),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("03:50", style: TextStyle(color: Colors.white)),
                  Text("05:50", style: TextStyle(color: Colors.white)),
                ],
              ),
              SizedBox(height: 10),

              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SvgPicture.asset(
                  //   "assets/icons/shuffle.svg",
                  //   color: Colors.white,
                  //   height: 24,
                  //   width: 24,
                  // ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isActive = !isActive;
                      });
                    },
                    child: SvgPicture.asset(
                      "assets/icons/shuffle.svg",
                      color: isActive ? Colors.green : Colors.white,
                      height: 24,
                      width: 24,
                    ),
                  ),
                  SizedBox(width: 70),

                  SvgPicture.asset(
                    "assets/icons/sec.svg",
                    color: Colors.white,
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 70),

                  Icon(Icons.restart_alt, color: Colors.white, size: 24),
                ],
              ),
              SizedBox(height: 10),

              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/speed.svg",
                    color: Colors.white,
                    height: 24,
                    width: 24,
                  ),
                  Spacer(),
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
                      "assets/icons/solar.svg",
                      color: Colors.white,
                      height: 24,
                      width: 24,
                    ),
                    // Text("Share", style: TextStyle(color: Colors.white)),
                  ),

                  SizedBox(width: 20),
                  SvgPicture.asset(
                    "assets/icons/Vector.svg",
                    color: Colors.white,
                    height: 24,
                    width: 24,
                  ),
                ],
              ),

              SizedBox(height: 10),
            ],
          ),
        ),
        // child: Padding(r
        //   padding: const EdgeInsets.only(top: 30, left: 19, right: 19),
        //   child: SingleChildScrollView(
        //     child: Column(
        //       // crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         // Top Container with image and details
        //         Container(
        //           height: s.height * 0.5,
        //           decoration: BoxDecoration(
        //             image: const DecorationImage(
        //               image: AssetImage("assets/images/r.png"),
        //               fit: BoxFit.contain,
        //             ),
        //             borderRadius: BorderRadius.circular(40),
        //           ),
        //           child: Stack(
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.all(18.0),
        //                 child: Row(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   mainAxisAlignment: MainAxisAlignment.end,
        //                   children: [
        //                     SvgPicture.asset(
        //                       "assets/icons/error.svg",
        //                       color: Colors.white,
        //                       height: 24,
        //                       width: 24,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         const SizedBox(height: 15),
        //         Text(
        //           "How do you rate this Podcast?",
        //           textAlign: TextAlign.center,
        //           style: TextStyle(color: Colors.white, fontSize: 20),
        //         ),
        //         const SizedBox(width: 15),
        //         Image.asset(
        //           "assets/images/star.svg",
        //           color: Colors.white,
        //           width: 24,
        //           height: 24,
        //         ),
        //         const SizedBox(height: 15),
        //         ElevatedButton(
        //           onPressed: () {},
        //           style: ElevatedButton.styleFrom(
        //             backgroundColor: Colors.white,
        //             foregroundColor: Colors.black,
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(40),
        //             ),
        //           ),
        //           child: const Text("Submit"),
        //         ),
        //         //   Row(
        //         //     // crossAxisAlignment: CrossAxisAlignment.start,
        //         //     mainAxisAlignment: MainAxisAlignment.start,
        //         //     children: [
        //         //       SvgPicture.asset(
        //         //         "assets/icons/Group.svg",
        //         //         width: 24,
        //         //         height: 24,
        //         //       ),
        //         //       const SizedBox(width: 15),

        //         //       SvgPicture.asset(
        //         //         "assets/icons/gala_add.svg",
        //         //         color: Colors.white,

        //         //         width: 24,
        //         //         height: 24,
        //         //       ),
        //         //       const SizedBox(width: 15),

        //         //       SvgPicture.asset(
        //         //         "assets/icons/d.svg",
        //         //         width: 26,
        //         //         height: 26,
        //         //       ),
        //         //       const SizedBox(width: 10),
        //         //       Spacer(),
        //         //       Icon(Icons.more_vert, size: 25, color: Color(0xffB3B3B3)),
        //         //       const SizedBox(width: 30),
        //         //       SvgPicture.asset(
        //         //         "assets/icons/shuffle.svg",
        //         //         width: 24,
        //         //         height: 24,
        //         //       ),
        //         //       const SizedBox(width: 20),

        //         //       Icon(Icons.play_circle_fill, size: 30, color: Colors.white),
        //         //     ],
        //         //   ),

        //         //   const SizedBox(height: 20),

        //         //   Text(
        //         //     "Every great story starts with a little disorder and this premiere episode throws you right into the storm. From the awkward silences that turn into big laughs, to bold opinions that spark unexpected debates, “The Kickoff Chaos” sets the stage for what this podcast is all about: honest, unfiltered, and unpredictable conversations. We dive into the messiness of starting fresh whether it’s first gigs, early struggles, or behind-the-scenes moments no one ever talks about. Expect laughter, heated takes, and plenty of “did that really just happen?” moments. It’s the perfect chaotic kickoff to a season that promises to never play it safe.",
        //         //     style: TextStyle(color: Color(0xffA5A1A1)),
        //         //   ),
        //         //   const SizedBox(height: 20),

        //         //   Text(
        //         //     "Chapters",
        //         //     style: TextStyle(
        //         //       color: Color(0xffFFFFFF),
        //         //       fontWeight: FontWeight.bold,
        //         //     ),
        //         //   ),

        //         //   ListView.builder(
        //         //     shrinkWrap: true,
        //         //     itemCount: 100,
        //         //     itemBuilder: (context, index) {
        //         //       return
        // ListTile(
        //         //         leading: Container(
        //         //           height: 150,
        //         //           width: 60,
        //         //           decoration: BoxDecoration(
        //         //             borderRadius: BorderRadius.circular(10),
        //         //             // color: Colors.amber,
        //         //             image: DecorationImage(
        //         //               image: AssetImage("assets/images/s.png"),
        //         //               fit: BoxFit.contain,
        //         //             ),
        //         //           ),
        //         //         ),
        //         //         title: Text(
        //         //           "Chapter 1: Cold Open",
        //         //           style: TextStyle(color: Colors.white),
        //         //         ),
        //         //         subtitle: Text(
        //         //           "The hosts jump straight into the mic with no script, setting the tone with raw energy, jokes, and that first spark of chaos.",
        //         //           style: TextStyle(color: Color(0xffA5A1A1)),
        //         //         ),
        //         //         trailing: Icon(
        //         //           Icons.more_vert,
        //         //           color: Color.fromARGB(255, 216, 211, 211),
        //         //         ),
        //         //       );
        //         //     },
        //         //   ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
