import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionTile extends StatelessWidget {
  final String title;
  final String date;
  final String amount;
  final String image;

  const TransactionTile({
    super.key,
    required this.title,
    required this.date,
    required this.amount,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
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
}

class TransactionList extends StatelessWidget {
  final List<Map<String, String>> transactions;

  const TransactionList({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions
          .map(
            (transaction) => TransactionTile(
              title: transaction['title']!,
              date: transaction['date']!,
              amount: transaction['amount']!,
              image: transaction['image']!,
            ),
          )
          .toList(),
    );
  }
}
