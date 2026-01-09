import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RatePodcastScreen extends StatelessWidget {
  const RatePodcastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Scaffold(
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
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: s.height * 0.4,
                    decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/images/r.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        "assets/icons/error.svg",
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "How do you rate this Podcast?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Medium",
                ),
              ),
              SizedBox(height: 30),
              Image.asset("assets/images/star.png"),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
