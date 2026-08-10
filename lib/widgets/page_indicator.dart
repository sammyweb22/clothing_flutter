import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int count;
  final int activeIndex;

  const PageIndicator({super.key, this.count = 3, this.activeIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(count, (index) {
          final bool isActive = index == activeIndex;

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: isActive ? 8 : 6,
            height: isActive ? 8 : 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive ? const Color(0xFF007AFF) : Colors.grey.shade300,
            ),
          );
        }),
      ),
    );
  }
}
