import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello, Maria',
          style: GoogleFonts.inter(
            fontSize: 17,
            color: const Color(0xFFC7C7CC),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Home',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 34,
              ),
            ),
            Image.asset('assets/images/user.png'),
          ],
        ),
      ],
    );
  }
}
