import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/welcome_background.jpg"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      ),
      // body: Column(
      //   children: [
      //     const TextField(
      //         decoration:
      //             InputDecoration(fillColor: Colors.amber, filled: true)
      //     ),
      //   ],
      // ),
    );
  }
}
