import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({super.key});

  Widget receiptRow(String title, String amount, {bool total = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: total ? 28 : 18,
              fontWeight: total ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
          Text(
            amount,
            style: GoogleFonts.inter(
              fontSize: total ? 28 : 18,
              fontWeight: total ? FontWeight.w700 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 20),

              /// Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Receipt",
                    style: GoogleFonts.inter(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.ios_share_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              /// Receipt
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        "assets/images/receipt.png",
                        fit: BoxFit.fill,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28,
                        vertical: 35,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "22.02.2020",
                              style: GoogleFonts.inter(fontSize: 18),
                            ),
                          ),

                          const SizedBox(height: 30),

                          Text(
                            "CASH RECEIPT",
                            style: GoogleFonts.inter(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),

                          const SizedBox(height: 25),

                          const Divider(),

                          receiptRow("Amount", "\$40.00"),
                          receiptRow("Service Fee", "\$2.82"),
                          receiptRow("Internet Charge", "\$7.18"),

                          const Divider(),

                          receiptRow("Total", "\$50.00", total: true),

                          const Divider(),

                          const Spacer(),

                          Image.asset(
                            "assets/images/barcode.png",
                            width: double.infinity,
                            height: 80,
                            fit: BoxFit.fitWidth,
                          ),

                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              /// Home Button
              SizedBox(
                width: double.infinity,
                height: 60,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF35B8FF), Color(0xFF007AFF)],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                        (route) => false,
                      );
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                    ),

                    child: Text(
                      "Home",
                      style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
