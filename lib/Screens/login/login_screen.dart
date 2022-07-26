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
            Container(
              //acc to screen size
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5, right:35, left:35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
