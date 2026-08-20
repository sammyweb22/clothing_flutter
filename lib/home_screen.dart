import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/transactions.dart';
import 'widgets/wallet_header.dart';
import 'widgets/transaction_data.dart';
import 'widgets/graph_painter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hiddenAmount = false;

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
              const Gap(10),

              // Header
              homeHeader(),

              const Gap(20),

              // BALANCE
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0XFF007AFF).withOpacity(.6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Balance",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),

                        Text(
                          hiddenAmount ? '*****' : "\$25,520",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),

                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: SvgPicture.asset('assets/icons/arrow.svg'),
                      ),
                      onTap: () {
                        setState(() {
                          hiddenAmount = !hiddenAmount;
                        });
                      },
                    ),
                  ],
                ),
              ),

              const Gap(20),

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
                    color: const Color(0xFFAF52DE).withOpacity(0.26),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),

              const Gap(20),
              // WALLET HEADER
              WalletHeader(
                onSeeAll: () {
                  // Do nothing for now
                },
              ),

              // TRANSACTIONS
              const TransactionList(transactions: transactions),

              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }

  Widget homeHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello, Maria',
          style: GoogleFonts.inter(
            fontSize: 17,
            color: const Color(0xFF8E8E93),
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
            Image.asset('assets/images/user.png', height: 40),
          ],
        ),
      ],
    );
  }
}
