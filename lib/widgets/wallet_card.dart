import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletCard extends StatelessWidget {
  final String image;
  final String cardNumber;
  final String cardHolder;
  final String expiryDate;
  final Color textColor;
  final bool showBalance;
  final String balance;
  final String? logo;

  const WalletCard({
    super.key,
    required this.image,
    required this.cardNumber,
    required this.cardHolder,
    required this.expiryDate,
    required this.textColor,
    required this.showBalance,
    this.balance = "\$50,000.00",
    this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 343 / 194,
      child: Stack(
        children: [
          // =========================
          // CARD BACKGROUND
          // =========================
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              image,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // ==============
          // LOGOS//
          // =============
          if (logo != null)
            Positioned(
              right: 24,
              top: 18,
              child: Image.asset(logo!, width: 54, height: 28),
            ),

          // =========================
          // BALANCE
          // =========================
          if (showBalance)
            Positioned(
              left: 24,
              top: 18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BALANCE",
                    style: GoogleFonts.courierPrime(
                      color: textColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    balance,
                    style: GoogleFonts.courierPrime(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

          // =========================
          // CARD NUMBER
          // =========================
          Positioned(
            left: 24,
            top: 86,
            child: Text(
              cardNumber,
              style: GoogleFonts.courierPrime(
                fontWeight: FontWeight.w800,
                fontSize: 24,
                color: textColor,
                letterSpacing: 1,
              ),
            ),
          ),

          // =========================
          // CARD HOLDER
          // =========================
          Positioned(
            left: 24,
            bottom: 20,
            child: Text(
              cardHolder,
              style: GoogleFonts.courierPrime(
                color: textColor,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          // =========================
          // EXPIRY
          // =========================
          Positioned(
            right: 24,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "EXPIRY",
                  style: GoogleFonts.courierPrime(
                    color: textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  expiryDate,
                  style: GoogleFonts.courierPrime(
                    color: textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
