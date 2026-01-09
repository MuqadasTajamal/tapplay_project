import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PodcastHeader extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String ratingText;
  final String iconPath; // For the top-right SVG icon

  const PodcastHeader({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.ratingText,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;

    return Container(
      height: 300,
      //  * 0.5,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // Top-right icon
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          iconPath,
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                // Text section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_border,
                          size: 15,
                          color: Color(0xffC5C5C5),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          ratingText,
                          style: const TextStyle(
                            color: Color(0xffC5C5C5),
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                          ),
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
    );
  }
}
