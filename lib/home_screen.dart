import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/home_header.dart';
import 'widgets/transactions.dart';
import 'widgets/wallet_header.dart';
import 'widgets/transaction_data.dart';
import 'widgets/graph_painter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // FLOATING BUTTON
      floatingActionButton: Container(
        width: 72,
        height: 72,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF6EC8FF), Color(0xFF007AFF)],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.35),
              blurRadius: 18,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(36),

            // HOME → WALLET
            onTap: () {
              Navigator.pushNamed(context, '/wallet');
            },

            child: const Center(
              child: Icon(Icons.add, color: Colors.white, size: 38),
            ),
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      // BODY
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              // Header
              const HomeHeader(),

              const SizedBox(height: 20),

              // BALANCE
              Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),

                      Text(
                        "My Balance",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$25,520",
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 25,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // EXPENSES
              Container(
                height: 260,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffF5E8FF),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Expenses",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: SizedBox(
                          width: double.infinity,
                          height: 120,
                          child: CustomPaint(painter: GraphPainter()),
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("JAN"),
                          Text("FEB"),
                          Text("MAR"),
                          Text("JUN"),
                          Text("JUL"),
                          Text("AUG"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // PURPLE BAR
              Center(
                child: Container(
                  width: 270,
                  height: 8,
                  decoration: BoxDecoration(
                    color: const Color(0xffEBD3F6),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              // WALLET HEADER
              WalletHeader(
                onSeeAll: () {
                  // Do nothing for now
                },
              ),

              const SizedBox(height: 20),
              // TRANSACTIONS
              const TransactionList(transactions: transactions),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
