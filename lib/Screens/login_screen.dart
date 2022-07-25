import 'package:findyourdoctor/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBG,
      appBar: AppBar(
        backgroundColor: kBGColor,
        elevation: 0,
        // automaticallyImplyLeading: false,
        title: Image.asset(
          'assests/icons/logoLight.png',
          scale: 5.0,
        ),
        // leading: GestureDetector(
        //   onTap: () {},
        //   child: Icon(
        //     Icons.menu,
        //   ),
        // ),
      ),
    );
  }
}
