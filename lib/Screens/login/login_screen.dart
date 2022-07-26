import 'package:findyourdoctor/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: lightBG,
        appBar: AppBar(
          backgroundColor: kBGColor,
          elevation: 0,
          centerTitle: true,
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
        body: Stack(
          children: [
            // Container(
            //   //padding is use to place the text on specific position
            //   //change the values using hit n trial method
            //   padding: EdgeInsets.only(left: 50, top: 50),
            //   child: Text(
            //     'Sign in',
            //     style: TextStyle(color: Colors.white, fontSize: 33),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
