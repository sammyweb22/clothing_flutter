import 'package:clothing_flutter/receipt_screen.dart';
import 'package:clothing_flutter/widgets/buttons.dart';
import 'package:clothing_flutter/widgets/wallet_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 20),

                // Header
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Cancel button
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                      ),
                    ),

                    // Payment title
                    Text(
                      'Payment',
                      style: GoogleFonts.inter(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                // Profile image
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),

                const SizedBox(height: 15),

                Text(
                  "PAYING",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  "Robert Downey, Jr.",
                  style: TextStyle(fontSize: 18),
                ),

                Text(
                  "\$50.00",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 72,
                  ),
                ),

                const SizedBox(height: 25),

                // Note
                TextField(
                  decoration: InputDecoration(
                    hintText: "Add a note",
                    filled: true,
                    fillColor: const Color(0xfff9f9fb),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Card image
                const WalletCard(
                  image: "assets/images/wallet1.png",
                  balance: "\$50,000.00",
                  cardNumber: "4225 9765 0008 6141",
                  cardHolder: "DWAYNE JOHNSON",
                  expiryDate: "09/24",
                  textColor: Colors.white,
                  showBalance: true,
                ),

                // Page indicator
                const SizedBox(height: 8),

                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(3, (index) {
                      const activeIndex = 0;

                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: index == activeIndex ? 8 : 6,
                        height: index == activeIndex ? 8 : 6,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == activeIndex
                              ? const Color(0xFF007AFF)
                              : Colors.grey.shade300,
                        ),
                      );
                    }),
                  ),
                ),

                const Gap(80),

                // Pay button
                CustomButton(
                  title: "Pay now",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReceiptScreen(),
                      ),
                    );
                  },
                ),

                //const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
