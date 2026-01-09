// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class FollowCustom extends StatelessWidget {
//   const FollowCustom({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return
//     Row(
//       children: [
//         ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.white,
//             foregroundColor: Colors.black,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(40),
//             ),
//           ),
//           child: const Text("Follow"),
//         ),
//         const SizedBox(width: 20),

//         SvgPicture.asset("assets/icons/bell.svg", width: 24, height: 24),
//         const SizedBox(width: 20),

//         Icon(Icons.more_vert, color: Color(0xffB3B3B3)),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionRow extends StatelessWidget {
  final VoidCallback? onFollowTap;
  final VoidCallback? onBellTap;
  final VoidCallback? onMoreTap;
  final String bellIconPath;
  final String followText;
  final double iconSize;

  const ActionRow({
    Key? key,
    this.onFollowTap,
    this.onBellTap,
    this.onMoreTap,
    this.bellIconPath = "assets/icons/bell.svg",
    this.followText = "Follow",
    this.iconSize = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Follow Button
        ElevatedButton(
          onPressed: onFollowTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: Text(followText),
        ),
        const SizedBox(width: 20),

        // Bell Icon
        GestureDetector(
          onTap: onBellTap,
          child: SvgPicture.asset(
            bellIconPath,
            width: iconSize,
            height: iconSize,
          ),
        ),
        const SizedBox(width: 20),

        // More Icon
        GestureDetector(
          onTap: onMoreTap,
          child: Icon(
            Icons.more_vert,
            color: const Color(0xffB3B3B3),
            size: iconSize,
          ),
        ),
      ],
    );
  }
}
