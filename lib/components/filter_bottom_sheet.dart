import 'package:flutter/material.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  String selectedFilter = "All episodes";
  String selectedSort = "Newest";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xff0F0B1F),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Title
          const Center(
            child: Text(
              "Filter and sort",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Divider(color: Colors.white70),
          const SizedBox(height: 10),

          /// Filter Section
          const Text(
            "Filter",
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
          const SizedBox(height: 5),

          FilterTile(
            title: "All episodes",
            isSelected: selectedFilter == "All episodes",
            onTap: () {
              setState(() {
                selectedFilter = "All episodes";
              });
            },
          ),

          FilterTile(
            title: "Downloaded",
            isSelected: selectedFilter == "Downloaded",
            onTap: () {
              setState(() {
                selectedFilter = "Downloaded";
              });
            },
          ),

          FilterTile(
            title: "Finished",
            isSelected: selectedFilter == "Finished",
            onTap: () {
              setState(() {
                selectedFilter = "Finished";
              });
            },
          ),

          // const SizedBox(height: 10),
          Divider(color: Colors.white70),
          const SizedBox(height: 10),

          /// Sort Section
          const Text(
            "Sort by",
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),

          const SizedBox(height: 5),
          FilterTile(
            title: "Newest",
            isSelected: selectedSort == "Newest",
            onTap: () {
              setState(() {
                selectedSort = "Newest";
              });
            },
          ),

          FilterTile(
            title: "Oldest",
            isSelected: selectedSort == "Oldest",
            onTap: () {
              setState(() {
                selectedSort = "Oldest";
              });
            },
          ),

          // const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class FilterTile extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const FilterTile({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            const Spacer(),
            if (isSelected)
              const Icon(Icons.check, color: Colors.green, size: 18),
          ],
        ),
      ),
    );
  }
}
