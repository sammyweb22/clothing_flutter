import 'package:clothing_flutter/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_screen.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({super.key});

  Widget dottedLine() {
    return SizedBox(
      height: 2,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          20,
          (index) => Container(width: 10, height: 2, color: Colors.black),
        ),
      ),
    );
  }

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
              const SizedBox(height: 10),

              // HEADER
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

              const SizedBox(height: 10),

              // RECEIPT
              Expanded(
                child: Center(
                  child: AspectRatio(
                    aspectRatio: 0.68,
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

                              const SizedBox(height: 15),

                              Text(
                                "CASH RECEIPT",
                                style: GoogleFonts.inter(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 3,
                                ),
                              ),

                              const SizedBox(height: 10),

                              dottedLine(),

                              receiptRow("Amount", "\$40.00"),
                              receiptRow("Service Fee", "\$2.82"),
                              receiptRow("Internet Charge", "\$7.18"),

                              dottedLine(),

                              receiptRow("Total", "\$50.00", total: true),

                              dottedLine(),

                              const Spacer(),

                              Image.asset(
                                "assets/images/barcode.png",
                                width: double.infinity,
                                height: 55,
                                fit: BoxFit.fitWidth,
                              ),

                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // HOME BUTTON
              CustomButton(
                title: "Home",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
