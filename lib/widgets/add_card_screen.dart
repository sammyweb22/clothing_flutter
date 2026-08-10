import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:clothing_flutter/payment_screen.dart';
import 'package:clothing_flutter/widgets/buttons.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Handle
            Center(
              child: Container(
                width: 45,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Add new card",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close, color: Colors.grey),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // Card Image
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                "assets/images/newcard.png",
                width: double.infinity,
                height: 220,
                fit: BoxFit.fitWidth,
              ),
            ),

            const SizedBox(height: 20),

            // Card Holder
            const Text(
              "Card holder's name",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                hintText: "Dwayne Johnson",
                filled: true,
                fillColor: const Color(0xFFF7F7FA),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 18,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Card Number
            const Text(
              "Card number",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 10),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "4225 9765 0008 6141",
                filled: true,
                fillColor: const Color(0xFFF7F7FA),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 18,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset("assets/icons/card.svg"),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Expiry + CVV
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Expiry Date",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "09 / 24",
                          filled: true,
                          fillColor: const Color(0xFFF7F7FA),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 18,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "CVV",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "722",
                          filled: true,
                          fillColor: const Color(0xFFF7F7FA),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 18,
                          ),
                          suffixIcon: const Icon(
                            Icons.help_outline,
                            color: Color(0xFF2196F3),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // Add Card
            CustomButton(
              title: "Add new card",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
