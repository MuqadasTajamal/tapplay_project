import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomQueueBottomSheet extends StatefulWidget {
  @override
  State<CustomQueueBottomSheet> createState() => _CustomQueueBottomSheetState();
}

class _CustomQueueBottomSheetState extends State<CustomQueueBottomSheet> {
  final List<Map<String, String>> queue = [
    {
      "title": "WTF with Marc Maron",
      "subtitle": "Marc Maron",
      "image": "assets/images/b.png",
    },
    {
      "title": "Turning Moments Into Lessons",
      "subtitle": "The Pivot Podcast",
      "image": "assets/images/b1.png",
    },
    {
      "title": "Conversations Without Limits",
      "subtitle": "Joe Rogan Experience",
      "image": "assets/images/b2.png",
    },
    {
      "title": "The Culture's Unfiltered Voice",
      "subtitle": "Joe Budden Podcast",
      "image": "assets/images/b3.png",
    },
  ];

  bool isPlaying = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color(0xFF121212),
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Queue",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          // Currently playing item
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  queue[0]["image"]!,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      queue[0]["title"]!,
                      style: TextStyle(
                        color: isPlaying ? Colors.green : Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      queue[0]["subtitle"]!,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white12,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // TOGGLE PLAY / PAUSE
                    setState(() {
                      isPlaying = !isPlaying;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              SvgPicture.asset(
                "assets/icons/shuffle.svg",
                color: Colors.white54,
                height: 20,
                width: 20,
              ),
              Text(
                "Shuffling from:",
                style: TextStyle(color: Colors.white54, fontSize: 14),
              ),
            ],
          ),

          const SizedBox(height: 10),
          // Queue list
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: queue.length - 1,
            itemBuilder: (context, index) {
              final item = queue[index + 1];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Text(
                      "${index + 1}.",
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset(
                        item["image"]!,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["title"]!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            item["subtitle"]!,
                            style: const TextStyle(color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
