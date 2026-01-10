import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tapplay_project/components/custom_share_sheet.dart';
import 'package:tapplay_project/controller/provider/profile_provider.dart';
import 'package:tapplay_project/controller/provider/single_provider.dart';
import 'package:tapplay_project/view/podcast/about_show_screen.dart';
import 'package:tapplay_project/view/podcast/portcast.dart';
import 'package:tapplay_project/view/podcast/profile_screen.dart';
import 'package:tapplay_project/view/podcast/rate_podcast_screen.dart';
import 'package:tapplay_project/view/podcast/single1_screen.dart';
import 'package:tapplay_project/view/podcast/single_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
        ChangeNotifierProvider(create: (_) => SingleProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(fontFamily: "Regular"),
        debugShowCheckedModeBanner: false,
        home: SingleScreen(),
        // ProfileScreen(),
      ),
    );
  }
}
