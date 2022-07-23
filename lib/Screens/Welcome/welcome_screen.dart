//<a href="https://lovepik.com/images/png-doctor-cartoon.html">Doctor Cartoon Png vectors by Lovepik.com</a>
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
              end: Alignment.bottomCenter,
              colors: [kBGColor, kPrimaryLightColor])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Center(
              child: Text("Welcome to Find my Doctor",
                  style: TextStyle(
                      fontFamily: 'Open Sans', fontWeight: FontWeight.bold)),
            ),
          ),
          body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assests/images/doctor.png',
                    // height: 300.0,
                    // width: 300.0,
                    scale: 8.0,
                    // final AlignmentGeometry alignment(-1.0,0.0);
                  ),
                  Container(
                    margin: EdgeInsets.all(50),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Search Without Login',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: kBGColor,
                          onPrimary: kPrimaryLightColor,
                          elevation: 2,
                          // shape: ButtonStyleButton(),
                          // alignment:Alignment.Center,
                        )),
                  )
                ]),
            //child: TextButton(onPressed: (){},child: Text('Button'),),
          )),
    );
  }
}
