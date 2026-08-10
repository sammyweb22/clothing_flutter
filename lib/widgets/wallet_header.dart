import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletHeader extends StatelessWidget {
  final VoidCallback? onSeeAll;
  final VoidCallback? onAdd;

  const WalletHeader({super.key, this.onSeeAll, this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Wallet",
          style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 34),
        ),

        if (onSeeAll != null)
          TextButton(
            onPressed: onSeeAll,
            child: const Text(
              "See all",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),

        if (onAdd != null)
          GestureDetector(
            onTap: onAdd,
            child: const Icon(
              Icons.add_circle_outline,
              color: Colors.blue,
              size: 34,
            ),
          ),
      ],
    );
  }
}
