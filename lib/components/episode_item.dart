import 'package:flutter/material.dart';

class EpisodeItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String date;
  final String duration;
  final bool showIcon;

  const EpisodeItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.duration,
    this.showIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(7),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      date,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      duration,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xffA5A1A1),
                      ),
                    ),
                    const SizedBox(width: 10),
                    if (showIcon) Image.asset("assets/images/l.png"),
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
