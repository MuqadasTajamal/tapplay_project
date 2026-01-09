// // import 'package:flutter/material.dart';
// // import 'package:share_plus/share_plus.dart';

// // void openChapterBottomSheet(BuildContext context, List chapters, int index) {
// //   showModalBottomSheet(
// //     context: context,
// //     backgroundColor: const Color(0xff1C2431),
// //     shape: const RoundedRectangleBorder(
// //       borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
// //     ),
// //     builder: (context) {
// //       return Padding(
// //         padding: const EdgeInsets.all(20),
// //         child: Column(
// //           mainAxisSize: MainAxisSize.min,
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             // 🔹 Top handle
// //             Center(
// //               child: Container(
// //                 width: 40,
// //                 height: 4,
// //                 decoration: BoxDecoration(
// //                   color: Colors.grey,
// //                   borderRadius: BorderRadius.circular(2),
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 20),

// //             // 🔹 Header row: image + text column
// //             Row(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 ClipRRect(
// //                   borderRadius: BorderRadius.circular(12),
// //                   child: Image.asset(
// //                     chapters[index]['image']!,
// //                     width: 60,
// //                     height: 60,
// //                     fit: BoxFit.cover,
// //                   ),
// //                 ),
// //                 const SizedBox(width: 16),
// //                 Expanded(
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Text(
// //                         chapters[index]['title']!,
// //                         style: const TextStyle(
// //                           color: Colors.white,
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                       const SizedBox(height: 6),
// //                       const Text(
// //                         "WTF with Marc Maron",
// //                         style: TextStyle(
// //                           color: Colors.grey,
// //                           fontSize: 14,
// //                           fontWeight: FontWeight.w400,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),

// //             const SizedBox(height: 20),
// //             const Divider(color: Colors.grey),
// //             const SizedBox(height: 10),

// //             // 🔹 Play button
// //             ListTile(
// //               leading: const Icon(Icons.play_arrow, color: Colors.white),
// //               title: const Text("Play", style: TextStyle(color: Colors.white)),
// //               onTap: () {
// //                 Navigator.pop(context);
// //                 // Play logic here
// //                 print("Play clicked");
// //               },
// //             ),

// //             // 🔹 Add to Playlist
// //             ListTile(
// //               leading: const Icon(Icons.playlist_add, color: Colors.white),
// //               title: const Text(
// //                 "Add to Playlist",
// //                 style: TextStyle(color: Colors.white),
// //               ),
// //               onTap: () {
// //                 Navigator.pop(context);
// //                 // Playlist logic
// //                 print("Add to Playlist clicked");
// //               },
// //             ),

// //             // 🔹 Share button
// //             ListTile(
// //               leading: const Icon(Icons.share, color: Colors.white),
// //               title: const Text("Share", style: TextStyle(color: Colors.white)),
// //               onTap: () {
// //                 Navigator.pop(context);
// //                 Share.share(
// //                   'Check out this chapter: ${chapters[index]['title']}',
// //                   subject: 'Podcast Chapter',
// //                 );
// //               },
// //             ),
// //           ],
// //         ),
// //       );
// //     },
// //   );
// // }

// // import 'package:flutter/material.dart';

// // class CustomShareSheet extends StatelessWidget {
// //   const CustomShareSheet({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     // Sample data
// //     final contacts = [
// //       {"name": "Philip Philips", "image": "assets/images/p1.png"},
// //       {"name": "Tatiana Bergson", "image": "assets/images/p2.png"},
// //       {"name": "Gustavo Tort", "image": "assets/images/p3.png"},
// //       {"name": "Hanna Botosh", "image": "assets/images/p4.png"},
// //     ];

// //     final apps = [
// //       {"name": "AirDrop", "icon": Icons.wifi},
// //       {"name": "Messages", "icon": Icons.message},
// //       {"name": "Mail", "icon": Icons.mail},
// //       {"name": "Notes", "icon": Icons.note},
// //     ];

// //     final actions = [
// //       {"name": "Copy Artist link", "icon": Icons.copy},
// //       {"name": "Save to Files", "icon": Icons.save},
// //       {"name": "Print", "icon": Icons.print},
// //     ];

// //     return Container(
// //       decoration: const BoxDecoration(
// //         color: Color(0xff1C2431),
// //         borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
// //       ),
// //       padding: const EdgeInsets.all(20),
// //       child: Column(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           // Top handle
// //           Center(
// //             child: Container(
// //               width: 40,
// //               height: 4,
// //               decoration: BoxDecoration(
// //                 color: Colors.grey,
// //                 borderRadius: BorderRadius.circular(2),
// //               ),
// //             ),
// //           ),
// //           const SizedBox(height: 20),

// //           // 🔹 Contacts row
// //           SizedBox(
// //             height: 80,
// //             child: ListView.separated(
// //               scrollDirection: Axis.horizontal,
// //               itemCount: contacts.length,
// //               separatorBuilder: (_, __) => const SizedBox(width: 12),
// //               itemBuilder: (context, index) {
// //                 final contact = contacts[index];
// //                 return Column(
// //                   children: [
// //                     CircleAvatar(
// //                       radius: 28,
// //                       backgroundImage: AssetImage(contact['image']!),
// //                     ),
// //                     const SizedBox(height: 6),
// //                     SizedBox(
// //                       width: 60,
// //                       child: Text(
// //                         contact['name']!,
// //                         style: const TextStyle(
// //                           color: Colors.white,
// //                           fontSize: 12,
// //                         ),
// //                         textAlign: TextAlign.center,
// //                         overflow: TextOverflow.ellipsis,
// //                       ),
// //                     ),
// //                   ],
// //                 );
// //               },
// //             ),
// //           ),
// //           const SizedBox(height: 20),

// //           // 🔹 Apps row
// //           SizedBox(
// //             height: 80,
// //             child: ListView.separated(
// //               scrollDirection: Axis.horizontal,
// //               itemCount: apps.length,
// //               separatorBuilder: (_, __) => const SizedBox(width: 12),
// //               itemBuilder: (context, index) {
// //                 final app = apps[index];
// //                 return Column(
// //                   children: [
// //                     Container(
// //                       width: 60,
// //                       height: 60,
// //                       decoration: BoxDecoration(
// //                         color: const Color(0xff2C3343),
// //                         borderRadius: BorderRadius.circular(16),
// //                       ),
// //                       child: Icon(
// //                         app['icon'] as IconData,
// //                         color: Colors.white,
// //                         size: 30,
// //                       ),
// //                     ),
// //                     const SizedBox(height: 6),
// //                     Text(
// //                       app['name']!,
// //                       style: const TextStyle(color: Colors.white, fontSize: 12),
// //                     ),
// //                   ],
// //                 );
// //               },
// //             ),
// //           ),
// //           const SizedBox(height: 20),
// //           const Divider(color: Colors.grey),

// //           // 🔹 Action list
// //           ListView.separated(
// //             shrinkWrap: true,
// //             physics: const NeverScrollableScrollPhysics(),
// //             itemCount: actions.length,
// //             separatorBuilder: (_, __) => const Divider(color: Colors.grey),
// //             itemBuilder: (context, index) {
// //               final action = actions[index];
// //               return ListTile(
// //                 leading: Icon(action['icon'] as IconData, color: Colors.white),
// //                 title: Text(
// //                   action['name']!,
// //                   style: const TextStyle(color: Colors.white),
// //                 ),
// //                 onTap: () {
// //                   Navigator.pop(context);
// //                   // TODO: handle each action
// //                   print("${action['name']} clicked");
// //                 },
// //               );
// //             },
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class CustomShareSheet extends StatelessWidget {
//   const CustomShareSheet({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Sample data
//     final contacts = [
//       {"name": "Philip Philips", "image": "assets/images/p1.png"},
//       {"name": "Tatiana Bergson", "image": "assets/images/p2.png"},
//       {"name": "Gustavo Tort", "image": "assets/images/p3.png"},
//       {"name": "Hanna Botosh", "image": "assets/images/p4.png"},
//     ];

//     final apps = [
//       {"name": "AirDrop", "icon": Icons.wifi},
//       {"name": "Messages", "icon": Icons.message},
//       {"name": "Mail", "icon": Icons.mail},
//       {"name": "Notes", "icon": Icons.note},
//     ];

//     final actions = [
//       {"name": "Copy Artist link", "icon": Icons.copy},
//       {"name": "Save to Files", "icon": Icons.save},
//       {"name": "Print", "icon": Icons.print},
//     ];

//     return Container(
//       decoration: const BoxDecoration(
//         color: Color(0xff1C2431),
//         borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
//       ),
//       padding: const EdgeInsets.all(20),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // Top handle
//           Center(
//             child: Container(
//               width: 40,
//               height: 4,
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.circular(2),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),

//           // 🔹 Contacts row
//           SizedBox(
//             height: 80,
//             child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               itemCount: contacts.length,
//               separatorBuilder: (_, __) => const SizedBox(width: 12),
//               itemBuilder: (context, index) {
//                 final contact = contacts[index];
//                 return Column(
//                   children: [
//                     CircleAvatar(
//                       radius: 28,
//                       backgroundImage: AssetImage(contact['image']!),
//                     ),
//                     const SizedBox(height: 6),
//                     SizedBox(
//                       width: 60,
//                       child: Text(
//                         contact['name']!,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 12,
//                         ),
//                         textAlign: TextAlign.center,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//           const SizedBox(height: 20),

//           // 🔹 Apps row
//           SizedBox(
//             height: 80,
//             child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               itemCount: apps.length,
//               separatorBuilder: (_, __) => const SizedBox(width: 12),
//               itemBuilder: (context, index) {
//                 final app = apps[index];
//                 return Column(
//                   children: [
//                     Container(
//                       width: 60,
//                       height: 60,
//                       decoration: BoxDecoration(
//                         color: const Color(0xff2C3343),
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       child: Icon(
//                         app['icon'] as IconData,
//                         color: Colors.white,
//                         size: 30,
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     Text(
//                       app['name']!,
//                       style: const TextStyle(color: Colors.white, fontSize: 12),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//           const SizedBox(height: 20),
//           const Divider(color: Colors.grey),

//           // 🔹 Action list
//           // Wrap ListView with SizedBox to give it bounded height
//           SizedBox(
//             height: actions.length * 60.0, // approximate height per ListTile
//             child: ListView.separated(
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: actions.length,
//               separatorBuilder: (_, __) => const Divider(color: Colors.grey),
//               itemBuilder: (context, index) {
//                 final action = actions[index];
//                 return ListTile(
//                   leading: Icon(
//                     action['icon'] as IconData,
//                     color: Colors.white,
//                   ),
//                   title: Text(
//                     action['name']!,
//                     style: const TextStyle(color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.pop(context);
//                     print("${action['name']} clicked");
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class CustomShareSheet extends StatelessWidget {
//   const CustomShareSheet({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Sample data
//     final contacts = [
//       {"name": "Philip Philips", "image": "assets/images/p1.png"},
//       {"name": "Tatiana Bergson", "image": "assets/images/p2.png"},
//       {"name": "Gustavo Tort", "image": "assets/images/p3.png"},
//       {"name": "Hanna Botosh", "image": "assets/images/p4.png"},
//     ];

//     final apps = [
//       {"name": "AirDrop", "icon": Icons.wifi},
//       {"name": "Messages", "icon": Icons.message},
//       {"name": "Mail", "icon": Icons.mail},
//       {"name": "Notes", "icon": Icons.note},
//     ];

//     final actions = [
//       {"name": "Copy Artist link", "icon": Icons.copy},
//       {"name": "Save to Files", "icon": Icons.save},
//       {"name": "Print", "icon": Icons.print},
//     ];

//     return Container(
//       decoration: const BoxDecoration(
//         color: Color(0xff1C2431),
//         borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
//       ),
//       padding: const EdgeInsets.all(20),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // Top handle
//           Center(
//             child: Container(
//               width: 40,
//               height: 4,
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.circular(2),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),

//           // 🔹 Contacts row
//           SizedBox(
//             height: 80,
//             child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               itemCount: contacts.length,
//               separatorBuilder: (_, __) => const SizedBox(width: 12),
//               itemBuilder: (context, index) {
//                 final Map<String, String> contact = contacts[index]; // ✅ fix
//                 return Column(
//                   children: [
//                     CircleAvatar(
//                       radius: 28,
//                       backgroundImage: AssetImage(contact['image']!),
//                     ),
//                     const SizedBox(height: 6),
//                     SizedBox(
//                       width: 60,
//                       child: Text(
//                         contact['name']!,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 12,
//                         ),
//                         textAlign: TextAlign.center,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//           const SizedBox(height: 20),

//           // 🔹 Apps row
//           SizedBox(
//             height: 80,
//             child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               itemCount: apps.length,
//               separatorBuilder: (_, __) => const SizedBox(width: 12),
//               itemBuilder: (context, index) {
//                 final Map<String, dynamic> app = apps[index]; // ✅ fix
//                 return Column(
//                   children: [
//                     Container(
//                       width: 60,
//                       height: 60,
//                       decoration: BoxDecoration(
//                         color: const Color(0xff2C3343),
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       child: Icon(
//                         app['icon'] as IconData,
//                         color: Colors.white,
//                         size: 30,
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     Text(
//                       app['name']!,
//                       style: const TextStyle(color: Colors.white, fontSize: 12),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//           const SizedBox(height: 20),
//           const Divider(color: Colors.grey),

//           // 🔹 Action list
//           SizedBox(
//             height: actions.length * 60.0, // approximate height per ListTile
//             child: ListView.separated(
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: actions.length,
//               separatorBuilder: (_, __) => const Divider(color: Colors.grey),
//               itemBuilder: (context, index) {
//                 final Map<String, dynamic> action = actions[index]; // ✅ fix
//                 return ListTile(
//                   leading: Icon(
//                     action['icon'] as IconData,
//                     color: Colors.white,
//                   ),
//                   title: Text(
//                     action['name']!,
//                     style: const TextStyle(color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.pop(context);
//                     print("${action['name']} clicked");
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomShareSheet extends StatelessWidget {
  const CustomShareSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    final contacts = [
      {"name": "Philip Philips", "image": "assets/images/b1.png"},
      {"name": "Tatiana Bergson", "image": "assets/images/b2.png"},
      {"name": "Gustavo Tort", "image": "assets/images/b3.png"},
      {"name": "Hanna Botosh", "image": "assets/images/g.png"},
    ];

    final apps = [
      {"name": "AirDrop", "icon": Icons.wifi},
      {"name": "Messages", "icon": Icons.message},
      {"name": "Mail", "icon": Icons.mail},
      {"name": "Notes", "icon": Icons.note},
    ];

    final actions = [
      {"name": "Copy Artist link", "icon": Icons.copy},
      {"name": "Save to Files", "icon": Icons.save},
      {"name": "Print", "icon": Icons.print},
    ];

    return SizedBox(
      height: s.height * .55,
      child: Container(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        decoration: const BoxDecoration(
          color: Color(0xff1C2431),
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // const SizedBox(height: 14),

            // 🔹 CONTACTS (FIXED HEIGHT)
            SizedBox(
              height: 90, // ✅ enough for avatar + text
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: contacts.length,
                separatorBuilder: (_, __) => const SizedBox(width: 20),
                itemBuilder: (context, index) {
                  final Map<String, String> contact = contacts[index];
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(contact['image']!),
                      ),
                      const SizedBox(height: 6),
                      SizedBox(
                        width: 50,
                        child: Text(
                          contact['name']!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 30),

            // 🔹 APPS (FIXED HEIGHT)
            SizedBox(
              height: 80, // ✅ icon + label
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: apps.length,
                separatorBuilder: (_, __) => const SizedBox(width: 20),
                itemBuilder: (context, index) {
                  final Map<String, dynamic> app = apps[index];
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xff2C3343),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Icon(
                          app['icon'] as IconData,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        app['name']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // 🔹 ACTIONS (NO OVERFLOW)
            Column(
              children: actions.map((action) {
                return Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        action['name'] as String,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      Icon(action['icon'] as IconData, color: Colors.white),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );

    // SizedBox(
    //   height: s.height * 0.6,
    //   child: Container(
    //     padding: const EdgeInsets.all(20),
    //     decoration: const BoxDecoration(
    //       color: Color(0xff1C2431),
    //       borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    //     ),
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         // handle
    //         Container(
    //           width: 40,
    //           height: 4,
    //           decoration: BoxDecoration(
    //             color: Colors.grey,
    //             borderRadius: BorderRadius.circular(2),
    //           ),
    //         ),

    //         // const SizedBox(height: 20),

    //         // 🔹 CONTACTS
    //         SizedBox(
    //           height: 20, // overflow fix
    //           child: ListView.separated(
    //             scrollDirection: Axis.horizontal,
    //             itemCount: contacts.length,
    //             separatorBuilder: (_, __) => const SizedBox(width: 14),
    //             itemBuilder: (context, index) {
    //               final Map<String, String> contact = contacts[index];
    //               return Column(
    //                 children: [
    //                   CircleAvatar(
    //                     radius: 28,
    //                     backgroundImage: AssetImage(contact['image']!),
    //                   ),
    //                   const SizedBox(height: 6),
    //                   SizedBox(
    //                     width: 60,
    //                     child: Text(
    //                       contact['name']!,
    //                       maxLines: 2,
    //                       overflow: TextOverflow.ellipsis,
    //                       textAlign: TextAlign.center,
    //                       style: const TextStyle(
    //                         color: Colors.white,
    //                         fontSize: 11,
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               );
    //             },
    //           ),
    //         ),

    //         const SizedBox(height: 20),

    //         // 🔹 APPS
    //         SizedBox(
    //           height: 40,
    //           child: ListView.separated(
    //             scrollDirection: Axis.horizontal,
    //             itemCount: apps.length,
    //             separatorBuilder: (_, __) => const SizedBox(width: 14),
    //             itemBuilder: (context, index) {
    //               final Map<String, dynamic> app = apps[index];
    //               return Column(
    //                 children: [
    //                   Container(
    //                     width: 50,
    //                     height: 50,
    //                     decoration: BoxDecoration(
    //                       color: const Color(0xff2C3343),
    //                       borderRadius: BorderRadius.circular(16),
    //                     ),
    //                     child: Icon(
    //                       app['icon'] as IconData,
    //                       color: Colors.white,
    //                       size: 30,
    //                     ),
    //                   ),
    //                   const SizedBox(height: 6),
    //                   Text(
    //                     app['name']!,
    //                     style: const TextStyle(
    //                       color: Colors.white,
    //                       fontSize: 12,
    //                     ),
    //                   ),
    //                 ],
    //               );
    //             },
    //           ),
    //         ),

    //         const SizedBox(height: 20),

    //         // 🔹 ACTIONS (TEXT → ICON, NO DIVIDER)
    //         Column(
    //           children: actions.map((action) {
    //             return Padding(
    //               padding: const EdgeInsets.symmetric(vertical: 12),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text(
    //                     action['name'] as String,
    //                     style: const TextStyle(
    //                       color: Colors.white,
    //                       fontSize: 16,
    //                     ),
    //                   ),
    //                   Icon(action['icon'] as IconData, color: Colors.white),
    //                 ],
    //               ),
    //             );
    //           }).toList(),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
