import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'newcard_screen.dart';
import 'widgets/wallet_header.dart';
import 'widgets/wallet_card.dart';
import 'widgets/page_indicator.dart';
import 'widgets/transactions.dart';
import 'widgets/transaction_data.dart';

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
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.arrow_back_ios, color: Colors.blue),
                      SizedBox(width: 4),
                      Text(
                        "Back",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Wallet Header
                WalletHeader(
                  onAdd: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      builder: (context) {
                        return ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.93,
                            color: Colors.white,
                            child: const AddCardScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),

                const SizedBox(height: 20),

                // VISA Card
                const WalletCard(),

                const SizedBox(height: 12),

                // Page Indicator
                const PageIndicator(),

                const SizedBox(height: 20),

                // Popular Card
                Image.asset("assets/images/popular.png"),

                const SizedBox(height: 30),

                // Transactions Header
                Text(
                  "Transactions",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 10),

                // Transactions
                const TransactionList(transactions: transactions),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
