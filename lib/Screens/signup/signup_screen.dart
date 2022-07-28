import 'package:findyourdoctor/constants.dart';
import 'package:flutter/material.dart';
import 'package:findyourdoctor/Screens/home/home_screen.dart';
import 'package:findyourdoctor/Screens/login/login_screen.dart';
import 'package:flutter/gestures.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                  height: 35.0,
                ),
                Container(
                  width: size.width,
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textcolor,
                      fontSize: 33,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  decoration: BoxDecoration(
                      color: tacolor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x140000000),
                          offset: Offset(0, 10),
                          blurRadius: 15,
                          spreadRadius: 0,
                        )
                      ]),
                  height: 60,
                  width: size.width,
                  child: Row(children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          maxLines: 1,
                          autofocus: false,
                          style: TextStyle(
                            color: textcolor,
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Name"),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  decoration: BoxDecoration(
                      color: tacolor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x140000000),
                          offset: Offset(0, 10),
                          blurRadius: 15,
                          spreadRadius: 0,
                        )
                      ]),
                  height: 60,
                  width: size.width,
                  child: Row(children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          maxLines: 1,
                          autofocus: false,
                          style: TextStyle(
                            color: textcolor,
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Email"),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  decoration: BoxDecoration(
                      color: tacolor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x140000000),
                          offset: Offset(0, 10),
                          blurRadius: 15,
                          spreadRadius: 0,
                        )
                      ]),
                  height: 60,
                  width: size.width,
                  child: Row(children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          maxLines: 1,
                          autofocus: false,
                          style: TextStyle(
                            color: textcolor,
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Password"),
                        ),
                      ),
                    ),
                  ]),
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
                      'Sign Up',
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
                                      text: "Already have an account? ",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 132, 132, 132),
                                          fontSize: 13)),
                                  TextSpan(
                                      text: "Sign In",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 132, 132, 132),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.pushReplacement(
                                              context,
                                              PageRouteBuilder(
                                                pageBuilder: (context,
                                                        animation1,
                                                        animation2) =>
                                                    LoginScreen(),
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
