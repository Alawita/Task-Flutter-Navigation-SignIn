import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pswrd = TextEditingController();
  final userName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text("Sign in")),
      ),
      body: Container(
        height: 300,
        margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: userName,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.abc,
                  color: Colors.amber,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                hintText: 'Username',
              ),
            ),
            TextField(
              obscureText: true,
              controller: pswrd,
              decoration: InputDecoration(
                fillColor: Colors.amberAccent,
                prefixIcon: Icon(
                  Icons.key,
                  color: Colors.amber,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                hintText: 'Password',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (pswrd.text == "12345") {
                    GoRouter.of(context).go("/details", extra: userName.text);
                  }
                },
                child: Text(
                  "Login!",
                ))
          ],
        ),
      ),
    );
  }
}
