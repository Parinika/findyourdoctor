//<a href="https://lovepik.com/images/png-doctor-cartoon.html">Doctor Cartoon Png vectors by Lovepik.com</a>
import 'package:findyourdoctor/Screens/home/home_screen.dart';
import 'package:findyourdoctor/Screens/login/login_screen.dart';
import 'package:findyourdoctor/Screens/signin/signup_screen.dart';
import 'package:findyourdoctor/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return const Image(image: AssetImage('assests/images/welcome_background.jpg'), fit:BoxFit.fill);
    return Container(
      //padding: EdgeInsets.only(bottom: 275.0),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [kBGColor, lightBG])),
      child: Scaffold(
        // extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 10,
            centerTitle: true,
            title: /*Center(
              child:*/ Text("Welcome to Find my Doctor",
                  style: TextStyle(
                      fontFamily: 'Open Sans', fontWeight: FontWeight.bold)),
            // ),
          ),
          body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assests/images/logo.jpg',
                    scale: 8.0,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Spacer(flex: 13),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: kBGColor,
                          onPrimary: kPrimaryLightColor,
                          fixedSize: const Size(300, 40),
                          elevation: 2,
                          shape: (RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: kPrimaryColor)))),
                      child: Text(
                        'Search Without Login',
                        style: TextStyle(fontSize: 20.0),
                      )),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Spacer(flex: 2),
                      Expanded(
                        flex: 6,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: kBGColor,
                                onPrimary: kPrimaryLightColor,
                                fixedSize: const Size(50, 40),
                                //padding: const EdgeInsets.symmetric(vertical: 12),
                                elevation: 2,
                                shape: (RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: kPrimaryColor)))),
                            child: Text(
                              'Login',
                              style: TextStyle(fontSize: 20.0),
                            )),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 6,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignupScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: kBGColor,
                                onPrimary: kPrimaryLightColor,
                                fixedSize: const Size(50, 40),
                                // padding: const EdgeInsets.symmetric( vertical: 12),
                                elevation: 2,
                                shape: (RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: kPrimaryColor)))),
                            child: Text(
                              'SignUp',
                              style: TextStyle(fontSize: 20.0),
                            )),
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                  Spacer(),
                  // Center(
                  //     child: Container(
                  //       margin: EdgeInsets.only(top: 20),
                  //       child: ElevatedButton(
                  //         onPressed: () {},
                  //         child: Text(
                  //           'Search Without Login',
                  //           style: TextStyle(fontSize: 20.0),
                  //         ),
                  //         style: ElevatedButton.styleFrom(
                  //           primary: kBGColor,
                  //           onPrimary: kPrimaryLightColor,
                  //           elevation: 2,
                  //           shape: (RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(10.0),
                  //             side: BorderSide(color: kPrimaryColor)))
                  //         ),
                  //       ),
                  //     )
                  // )
                ]),
          )),
    );
  }
}
