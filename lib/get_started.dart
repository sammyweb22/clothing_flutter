import 'package:clothing_flutter/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image
              Container(
                height: height * .55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFAF52DE).withOpacity(.1),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Image.asset(
                  "assets/images/kingdom-payment.png",
                  fit: BoxFit.cover,
                ),
              ),

              // Bottom section
              Container(
                width: double.infinity,
                color: const Color(0xFFAF52DE).withOpacity(.1),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const Gap(40),

                      Image.asset("assets/images/expenio.png"),

                      const Gap(30),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'Going cashless has never been this easier with the world’s most leading expense manager.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 17,
                            color: const Color(0xFFAEAEB2),
                          ),
                        ),
                      ),

                      const Gap(130),

                      CustomButton(
                        title: "Get Started",
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                      ),

                      const Gap(50),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
