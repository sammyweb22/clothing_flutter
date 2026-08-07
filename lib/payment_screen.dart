import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment',
                    style: GoogleFonts.inter(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      //height: 41,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'cancel',
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              //profile image
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
              Text("Robert Downey, Jr.", style: TextStyle(fontSize: 18)),
              Text(
                "\$50.00",
                style: GoogleFonts.inter(
                  //height: 86,
                  fontWeight: FontWeight.w400,
                  fontSize: 72,
                ),
              ),
              const SizedBox(height: 25),

              //Note
              TextField(
                decoration: InputDecoration(
                  hintText: "Add a note",
                  filled: true,
                  fillColor: Color(0xfff9f9fb),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // card image
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  "assets/images/visa.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              // Page Indicator/3 dots
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
              Spacer(),

              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF35B8FF), Color(0xFF007AFF)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  child: const Text(
                    "Pay now",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
