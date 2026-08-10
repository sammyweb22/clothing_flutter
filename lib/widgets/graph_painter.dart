import 'package:flutter/material.dart';

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
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
