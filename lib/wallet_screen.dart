import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 42),

                // Back Button
                Row(
                  children: const [
                    Icon(Icons.arrow_back_ios, color: Colors.blue),
                    SizedBox(width: 4),
                    Text(
                      "Back",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Wallet Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Wallet",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 34,
                      ),
                    ),
                    const Icon(
                      Icons.add_circle_outline,
                      color: Colors.blue,
                      size: 34,
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // VISA Card
                Image.asset("assets/images/visa.png", width: double.infinity),

                const SizedBox(height: 12),

                // Page Indicator
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

                const SizedBox(height: 20),

                // Popular Card
                Image.asset(
                  "assets/images/popular.png",
                  width: double.infinity,
                ),

                const SizedBox(height: 30),

                // Transactions Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transactions",
                      style: GoogleFonts.inter(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                transaction(
                  "Nike Air Max 2090",
                  "15 Aug 2020",
                  "-\$243.00",
                  "assets/icons/nike.svg",
                ),

                transaction(
                  "iPad Pro 2020",
                  "10 Aug 2020",
                  "-\$799.00",
                  "assets/images/apple.png",
                ),

                transaction(
                  "Uber",
                  "5 Mar 2020",
                  "-\$34.00",
                  "assets/images/uber.png",
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget transaction(String title, String date, String amount, String image) {
  return Card(
    elevation: 0,
    color: Colors.white,
    margin: const EdgeInsets.only(bottom: 12),
    child: ListTile(
      contentPadding: EdgeInsets.zero,

      leading: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.grey.shade200,
        backgroundImage: AssetImage(image),
      ),

      title: Text(
        title,
        style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600),
      ),

      subtitle: Text(
        date,
        style: GoogleFonts.inter(fontSize: 14, color: Colors.grey),
      ),

      trailing: Text(
        amount,
        style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    ),
  );
}
