import 'package:findyourdoctor/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kBGColor, kPrimaryLightColor])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Center(
              child: Text("welcome to find my doctor"),
            ),
          ),
          body: Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.white,
            ),
          )),
    );
  }
}
