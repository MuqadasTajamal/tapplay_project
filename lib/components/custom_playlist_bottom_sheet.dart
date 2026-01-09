import 'package:flutter/material.dart';

class CustomPlaylistBottomSheet extends StatefulWidget {
  void showCreatePlaylistDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          backgroundColor: Color(0xFF1E1E2C), // dark bg
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  "Playlist",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Medium",
                  ),
                ),

                SizedBox(height: 15),

                // Title TextField
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Title",
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white10,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                SizedBox(height: 12),

                // Description TextField
                TextField(
                  style: TextStyle(color: Colors.white),
                  maxLines: 2,
                  decoration: InputDecoration(
                    hintText: "Description",
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white10,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Buttons
                Row(
                  children: [
                    // Create Button
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          // create logic yahan
                        },
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "Create",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Medium",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 12),

                    // Cancel Button
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Medium",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  State<CustomPlaylistBottomSheet> createState() =>
      _CustomPlaylistBottomSheetState();
}

class _CustomPlaylistBottomSheetState extends State<CustomPlaylistBottomSheet> {
  final List<Map<String, String>> playlists = [
    {
      "title": "Liked Songs",
      "subtitle": "Auto Playlist · 12 songs",
      "image": "assets/images/b3.png",
    },
    {
      "title": "Vibes",
      "subtitle": "Playlist · 10 songs",
      "image": "assets/images/r.png",
    },
    {
      "title": "Memories",
      "subtitle": "Playlist · 10 songs",
      "image": "assets/images/b.png",
    },
    {
      "title": "Party vibez",
      "subtitle": "Playlist · 10 songs",
      "image": "assets/images/b1.png",
    },
    {
      "title": "Late Night",
      "subtitle": "Playlist · 10 songs",
      "image": "assets/images/b2.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5, // approx 3/4 screen
      decoration: BoxDecoration(
        color: Color(0xFF1E1E2C), // dark background like the screenshot
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          SizedBox(height: 10),

          // Save to playlist button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Save to playlist",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),

                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (context) {
                        return Dialog(
                          backgroundColor: Colors.transparent,
                          insetPadding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFF2A1E3F), Color(0xFF120A1F)],
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Title
                                Center(
                                  child: Text(
                                    "New playlist",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: "Medium",
                                    ),
                                  ),
                                ),

                                SizedBox(height: 20),

                                // Title field
                                Text(
                                  "Title",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                                TextField(
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white38,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 15),

                                // Description field
                                Text(
                                  "Description",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                                TextField(
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white38,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 25),

                                // Buttons
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            25,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Create",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Medium",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () => Navigator.pop(context),
                                        child: Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(
                                              0.15,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              25,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Medium",
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "New playlist",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Medium",
                      ),
                    ),
                  ),
                ),

                // InkWell(
                //   onTap: () {
                //     showDialog(
                //       context: context,
                //       builder: (context) {
                //         return AlertDialog(
                //           backgroundColor: Color(0xFF1E1E2C),
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(20),
                //           ),
                //           title: Text(
                //             "Playlist",
                //             style: TextStyle(
                //               color: Colors.white,
                //               fontFamily: "Medium",
                //             ),
                //           ),
                //           content: Column(
                //             mainAxisSize: MainAxisSize.min,
                //             children: [
                //               TextField(
                //                 style: TextStyle(color: Colors.white),
                //                 decoration: InputDecoration(
                //                   hintText: "Title",
                //                   hintStyle: TextStyle(color: Colors.grey),
                //                   filled: true,
                //                   fillColor: Colors.white10,
                //                   border: OutlineInputBorder(
                //                     borderRadius: BorderRadius.circular(12),
                //                     borderSide: BorderSide.none,
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(height: 10),
                //               TextField(
                //                 style: TextStyle(color: Colors.white),
                //                 maxLines: 2,
                //                 decoration: InputDecoration(
                //                   hintText: "Description",
                //                   hintStyle: TextStyle(color: Colors.grey),
                //                   filled: true,
                //                   fillColor: Colors.white10,
                //                   border: OutlineInputBorder(
                //                     borderRadius: BorderRadius.circular(12),
                //                     borderSide: BorderSide.none,
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //           actions: [
                //             TextButton(
                //               onPressed: () {
                //                 Navigator.pop(context);
                //               },
                //               child: Text(
                //                 "Create",
                //                 style: TextStyle(color: Colors.black),
                //               ),
                //               style: TextButton.styleFrom(
                //                 backgroundColor: Colors.white,
                //               ),
                //             ),
                //             TextButton(
                //               onPressed: () {
                //                 Navigator.pop(context);
                //               },
                //               child: Text(
                //                 "Cancel",
                //                 style: TextStyle(color: Colors.white),
                //               ),
                //               style: TextButton.styleFrom(
                //                 backgroundColor: Colors.black,
                //               ),
                //             ),
                //           ],
                //         );
                //       },
                //     );
                //   },
                //   child: Container(
                //     padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //     child: Text(
                //       "New playlist",
                //       style: TextStyle(
                //         color: Colors.black,
                //         fontFamily: "Medium",
                //       ),
                //     ),
                //   ),
                // ),

                // Container(
                //   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                //   child: Text(
                //     "New playlist",
                //     style: TextStyle(color: Colors.black, fontFamily: "Medium"),
                //   ),
                // ),
              ],
            ),
          ),
          Divider(color: Colors.white60),
          SizedBox(height: 10),

          // Playlist List
          Expanded(
            child: ListView.builder(
              itemCount: playlists.length,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                final playlist = playlists[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(playlist["image"]!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            playlist["title"]!,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            playlist["subtitle"]!,
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// To show this bottom sheet:
