import 'package:findyourdoctor/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      //padding: EdgeInsets.only(bottom: 275.0),
      // decoration: const BoxDecoration(
      //     gradient: LinearGradient(
      //         begin: Alignment.topCenter,
      //         end: Alignment.bottomLeft,
      //         colors: [kBGColor, kPrimaryLightColor])),
          //extendBodyBehindAppBar: true,
          backgroundColor: lightBG,
          appBar: AppBar(
            backgroundColor: kBGColor,
            elevation: 0,
            automaticallyImplyLeading: false,
            title:
              Image.asset('assests/icons/logoLight.png',),
              // child: Text("Welcome to Find my Doctor",
              //     style: TextStyle(
              //         fontFamily: 'Open Sans', fontWeight: FontWeight.bold)),
            
          ),
          body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ]),
          ),
    );
  }
}
