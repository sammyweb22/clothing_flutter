import 'package:clothing_flutter/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'get_started.dart';
import 'home_screen.dart';
import 'newcard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const GetStartedScreen(),
        //'/home': (context) => const HomeScreen(),
        //'/': (context) => const WalletScreen(),
        '/': (context) => const AddCardScreen(),
      },
    );
  }
}
