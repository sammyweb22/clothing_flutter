import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hello, Maria',
                  style: GoogleFonts.inter(
                    fontSize: 17,
                    color: Color(0xFFC7C7CC),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Home',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 34,
                        color: Color(0xFF000000),
                      ),
                    ),
                    Image.asset("assets/images/user.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
