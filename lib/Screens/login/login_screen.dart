import 'package:findyourdoctor/constants.dart';
import 'package:flutter/material.dart';
import 'package:findyourdoctor/Screens/home/home_screen.dart';
import 'package:findyourdoctor/Screens/signup/signup_screen.dart';

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
          automaticallyImplyLeading: false,
          title: Image.asset(
            'assests/icons/logoLight.png',
            scale: 5.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10.0)),
          ),
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
            onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));},
          ),
          ],
        ),
        //backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage('assests/images/loginbg1.png'),
              //     fit: BoxFit.fill,
              //   ),
              // ),
              //padding is use to place the text on specific position
              //change the values using hit n trial method
              padding: EdgeInsets.only(left: 150, top: 150),
              child: Text(
                'Sign in',
                style: TextStyle(color: kBGColor, fontSize: 33),
              ),
            ),
            Container(
              //acc to screen size
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3,
                  right: 35,
                  left: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: lightBG,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  //gap between two
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    //for hidden password
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: lightBG,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                            color: kBGColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: kBGColor,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text('New User?'),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignupScreen()));
                            // Navigator.pushNamed(context, 'SignUp');
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: kBGColor,
                              fontSize: 15,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
