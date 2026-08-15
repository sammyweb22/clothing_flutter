import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: onSeeAll != null ? 22 : 34),
        ),

        if (onSeeAll != null)
          TextButton(
            onPressed: onSeeAll,
            child: const Text(
              "See all",
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),

        if (onAdd != null)
          InkWell(
            onTap: onAdd,
            child: SvgPicture.asset('assets/icons/add-icon.svg'),
          ),
      ],
    );
  }
}
