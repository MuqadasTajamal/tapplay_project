import 'package:flutter/material.dart';
import 'package:tapplay_project/components/custom_share_sheet.dart';
import 'package:tapplay_project/view/podcast/about_show_screen.dart';
import 'package:tapplay_project/view/podcast/artise_profile_screen.dart';
import 'package:tapplay_project/view/podcast/portcast.dart';
import 'package:tapplay_project/view/podcast/profile_screen.dart';
import 'package:tapplay_project/view/podcast/single_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Regular"),
      debugShowCheckedModeBanner: false,
      home:
          //  Portcast(),
          //  Scaffold(body: CustomShareSheet()),
          // SingleScreen(),
          ProfileScreen(),
      // // ArtiseProfileScreen(),
      // ArtiseProfile(),
      // AboutShowScreen(),
    );
  }
}
