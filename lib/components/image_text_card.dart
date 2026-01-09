import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageTextCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String ratingText;
  final String iconPath;
  final double height;

  const ImageTextCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.ratingText,
    required this.iconPath,
    this.height = 250, // default height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Stack(
        children: [
          // Top-right icon
          Positioned(
            top: 20,
            right: 10,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(iconPath, height: 25, width: 25),
            ),
          ),

          // Text content
          Positioned(
            top: 190,
            left: 20,
            right: 20,
            child: Column(
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
                    fontSize: 18,
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
          ),
        ],
      ),
    );
  }
}
