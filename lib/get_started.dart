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
      // extendBody: true,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFAF52DE).withOpacity(.1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Image.asset(
                  "assets/images/kingdom-payment.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: height * .35,
              color: Color(0xFFAF52DE).withOpacity(.1),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Gap(40),
                    Image.asset("assets/images/expenio.png"),
                    const Gap(40),
                    Text(
                      'Going cashless has never been this easier with the world’s most leading expense manager.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 17,
                        color: Color(0xFFAEAEB2),
                      ),
                    ),
                    Spacer(),
                    // TextButton(onPressed: () => {}, child: Text('Get Started')),
                    CustomButton(
                      title: "Get started",
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                    ),
                    const Gap(30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
