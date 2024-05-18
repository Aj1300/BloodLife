import 'package:flutter/material.dart';

class DonationPage extends StatelessWidget {
  const DonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text(
        "learn flutter",
        style: TextStyle(
            fontSize: 40,
            color: Colors.blue,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            letterSpacing: 1,
            wordSpacing: 20,
            backgroundColor: Color.fromARGB(255, 111, 255, 59),
            shadows: [
              Shadow(color: Colors.black, offset: Offset(5, 15), blurRadius: 5)
            ]),
      ),
    ));
  }
}
