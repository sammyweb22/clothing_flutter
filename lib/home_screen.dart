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
      backgroundColor: Colors.white,

      floatingActionButton: Container(
        width: 72,
        height: 72,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6EC8FF), // Light blue
              Color(0xFF007AFF), // Dark blue
            ],
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
            onTap: () {
              // Your action here
            },
            child: const Center(
              child: Icon(Icons.add, color: Colors.white, size: 38),
            ),
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                'Hello, Maria',
                style: GoogleFonts.inter(
                  fontSize: 17,
                  color: Color(0xFFC7C7CC),
                ),
              ),
              //const SizedBox(height: 10),
              Row(
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
              const SizedBox(height: 20),

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
                          color: const Color(0xffFFFFFF),
                          fontSize: 15,
                        ),
                      ),
                      //const SizedBox(height: 20),
                      //Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$25,520",
                            style: GoogleFonts.inter(
                              color: Color(0xffFFFFFF),
                              fontSize: 34,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(
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
                      //Spacer(),
                      //Graph Painter
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
              //Rounded Purple Bar
              Center(
                child: Container(
                  width: 270,
                  height: 8,
                  decoration: BoxDecoration(
                    color: const Color(0xfffEBD3F6),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// Wallet Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Wallet",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              transaction(
                "Nike Air Max 2090",
                "15 Aug 2020",
                "-\$243.00",
                "assets/images/nike.png",
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
              //const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  Widget transaction(String title, String date, String amount, String image) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey.shade200,
            backgroundImage: AssetImage(image),
          ),

          const SizedBox(width: 18),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 24)),

                Text(
                  date,
                  style: const TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
          ),

          Text(amount, style: const TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}

class GraphPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint mainLine = Paint()
      ..color = const Color(0xFFB04AE5)
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final Paint secondLine = Paint()
      ..color = const Color(0xFFB04AE5).withValues(alpha: 0.35)
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final double w = size.width;
    final double h = size.height;

    // Main graph
    final Path path = Path()
      ..moveTo(0, h * 0.60)
      ..quadraticBezierTo(w * 0.12, h * 0.15, w * 0.28, h * 0.55)
      ..quadraticBezierTo(w * 0.42, h * 0.95, w * 0.58, h * 0.35)
      ..quadraticBezierTo(w * 0.72, h * 0.05, w * 0.88, h * 0.55)
      ..quadraticBezierTo(w * 0.94, h * 0.75, w, h * 0.30);

    canvas.drawPath(path, mainLine);

    // Second graph
    final Path path2 = Path()
      ..moveTo(0, h * 0.25)
      ..quadraticBezierTo(w * 0.18, h * 0.80, w * 0.34, h * 0.30)
      ..quadraticBezierTo(w * 0.48, h * 0.00, w * 0.65, h * 0.50)
      ..quadraticBezierTo(w * 0.82, h * 0.90, w, h * 0.12);

    canvas.drawPath(path2, secondLine);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
