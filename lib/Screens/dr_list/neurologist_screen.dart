import 'package:findyourdoctor/constants.dart';
import 'package:flutter/material.dart';
import 'package:findyourdoctor/Screens/home/home_screen.dart';

class NeurologistScreen extends StatefulWidget {
  State<StatefulWidget> createState() => NeurologistState();
}

class NeurologistState extends State<NeurologistScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: lightBG,
      appBar: AppBar(
        backgroundColor: kBGColor,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assests/icons/logoLight.png',
          scale: 5.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10.0)),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: ListView(
                children: [
                  demoTopRatedDr(
                    "assests/images/dr_1.png",
                    "Dr.Fred Mask",
                    "Heart Surgon",
                    "4.1",
                    "",
                    context,
                  ),
                ],
              ),
            ))
          ]),
        ),
      ),
    );
  }
}
  Widget demoTopRatedDr(String img, String name, String speciality,
      String rating, String distance,BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Container(
        height: 90,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: lightBG,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 90,
              width: 50,
              child: Image.asset(img),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      name,
                      style: TextStyle(
                        color: lightBG,
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: lightBG,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 3, left: size.width * 0.25),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Rating: ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  rating,
                                  style: TextStyle(
                                    color: lightBG,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
