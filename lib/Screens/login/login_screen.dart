import 'package:findyourdoctor/constants.dart';
import 'package:flutter/material.dart';
import 'package:findyourdoctor/Screens/home/home_screen.dart';
import 'package:findyourdoctor/Screens/signup/signup_screen.dart';
import 'package:flutter/gestures.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Scaffold(
        backgroundColor: lightBG,
        appBar: AppBar(
          backgroundColor: kBGColor,
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Image.asset(
            'assests/icons/logoLight.png',
            scale: 5.0,
          ),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.vertical(bottom: Radius.circular(10.0)),
          // ),
          actions: [
            // TextButton(
            //   style: ButtonStyle(
            //     foregroundColor: MaterialStateProperty.all<Color>(lightBG),
            //   ),
            //   onPressed: () {
            //   },
            //   child: Text('Skip'),
            // )
            IconButton(
              constraints: BoxConstraints.expand(width: 80),
              icon: Text('Skip', textAlign: TextAlign.center),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          HomeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ));
              },
            ),
          ],
        ),
        body: Container(
          // children: [
          //
          //   Container(
          //     //acc to screen size
          //     padding: EdgeInsets.only(
          //         top: MediaQuery.of(context).size.height * 0.3,
          //         right: 35,
          //         left: 35),
          //     child: Column(
          //       children: [
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Text(
          //               'Sign In',
          //               style: TextStyle(
          //                   color: kBGColor,
          //                   fontSize: 15,
          //                   fontWeight: FontWeight.w700),
          //             ),
          //             CircleAvatar(
          //               radius: 20,
          //               backgroundColor: kBGColor,
          //               child: IconButton(
          //                 onPressed: () {},
          //                 icon: Icon(Icons.arrow_forward),
          //               ),
          //             )
          //           ],
          //         ),
          //         SizedBox(
          //           height: 30,
          //         ),
          //         Row(
          //           children: [
          //             Text('New User?'),
          //             TextButton(
          //                 onPressed: () {
          //                   // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignupScreen()));
          //                   Navigator.pushReplacement(
          //                         context,
          //                         PageRouteBuilder(
          //                           pageBuilder:
          //                               (context, animation1, animation2) =>
          //                                   SignupScreen(),
          //                           transitionDuration: Duration.zero,
          //                           reverseTransitionDuration: Duration.zero,
          //                         ));
          //                 },
          //                 child: Text(
          //                   'Sign up',
          //                   style: TextStyle(
          //                     decoration: TextDecoration.underline,
          //                     color: kBGColor,
          //                     fontSize: 15,
          //                   ),
          //                 ))
          //           ],
          //         )
          //       ],
          //     ),
          //   )
          // ],

          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Stack(
                  fit: StackFit.loose,
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: ClipPath(
                          clipper: WaveClipper(),
                          child: Container(
                            color: kBGColor,
                            height: 200,
                          )),
                    ),
                    ClipPath(
                        clipper: WaveClipperUpper(),
                        child: Container(
                          color: kBGColor,
                          height: 200,
                        )),
                  ],
                ),
                SizedBox(
                  height: 60.0,
                ),
                Container(
                  width: size.width,
                  child: Text(
                    "Sign In",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textcolor,
                      fontSize: 33,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: lightBG,
                        filled: true,
                        hintText: 'Email',
                        focusedBorder: InputBorder. none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            )
                            ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: lightBG,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: lightBG,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50.0,
                  width: size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: kBGColor,
                        onPrimary: kPrimaryLightColor,
                        // fixedSize: const Size(300, 40),
                        elevation: 2,
                        shape: (RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ))),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  margin: EdgeInsets.only(top: 20, left: 15),
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20, top: 1),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: RichText(
                                text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: [
                                  TextSpan(
                                      text: "New User? ",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 132, 132, 132),
                                          fontSize: 13)),
                                  TextSpan(
                                      text: "Sign Up",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 132, 132, 132),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.none),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.pushReplacement(
                                              context,
                                              PageRouteBuilder(
                                                pageBuilder: (context,
                                                        animation1,
                                                        animation2) =>
                                                    SignupScreen(),
                                                transitionDuration:
                                                    Duration.zero,
                                                reverseTransitionDuration:
                                                    Duration.zero,
                                              ));
                                        }),
                                ]))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  //@override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height - 30.0);
    var firstStart = Offset(size.width / 4, size.height + 25.0);
    var firstEnd = Offset(size.width / 1.5, size.height - 30.0);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 60);
    var secondEnd = Offset(size.width, size.height - 50.0);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class WaveClipperUpper extends CustomClipper<Path> {
  //@override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height - 10.0);
    var firstStart = Offset(size.width / 4, size.height - 100.0);
    var firstEnd = Offset(size.width / 1.85, size.height - 35.0);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart =
        Offset(size.width - (size.width / 5.24), size.height + 20.0);
    var secondEnd = Offset(size.width, size.height - 20.0);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
