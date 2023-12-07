import 'package:flutter/material.dart';

class SignedIn extends StatelessWidget {
  final String username;

  const SignedIn({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Welcome! ${username}"),
          Center(
              child: Container(
                  width: 150, child: Image.asset("assets/images/green.png")))
        ],
      ),
    );
  }
}
