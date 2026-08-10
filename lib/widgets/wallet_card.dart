import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final String image;

  const WalletCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Image.asset(image, width: double.infinity, fit: BoxFit.cover),
    );
  }
}
