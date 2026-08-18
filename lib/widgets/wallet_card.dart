import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 343 / 194,
      child: Stack(
        children: [
          // Background PNG
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              "assets/images/wallet1.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Text on top of the image
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BALANCE",
                  style: GoogleFonts.courierPrime(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                //const SizedBox(height: 5),
                Text(
                  "\$50,000.00",
                  style: GoogleFonts.courierPrime(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),

                const SizedBox(height: 25),

                Text(
                  "4225 9765 0008 6141",
                  style: GoogleFonts.courierPrime(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                ),

                const Gap(26),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "DWAYNE JOHNSON",
                      style: GoogleFonts.courierPrime(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "EXPIRY",
                          style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "09/24",
                          style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
