import 'package:findyourdoctor/constants.dart';
import 'package:flutter/material.dart';
import 'package:findyourdoctor/Screens/home/home_screen.dart';
import 'package:findyourdoctor/Screens/login/login_screen.dart';


class GynaeScreen extends StatefulWidget {
  State<StatefulWidget> createState() => GynaeState();
}
class GynaeState extends State<GynaeScreen>{

  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10.0)),
        ),
        actions: [
          IconButton(
            constraints: BoxConstraints.expand(width: 80),
            icon: Text(
              'Login',
              textAlign: TextAlign.center,
            ),
            onPressed: () { 
              Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        LoginScreen(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ));
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: lightBG,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 200.0,
              child: const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: kBGColor,
                ),
                accountName: Text(
                  "Parinika Jain",
                  style: TextStyle(
                    color: lightBG,
                    fontSize: 17.0,
                  ),
                ),
                accountEmail: Text(
                  "abc@gmail.com",
                  style: TextStyle(
                    color: lightBG,
                    fontSize: 17.0,
                  ),
                ),
                currentAccountPicture: Icon(
                  Icons.account_circle,
                  size: 75.0,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Item 1',
                style: TextStyle(color: kPrimaryColor, fontSize: 18.0),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Item 2',
                style: TextStyle(color: kPrimaryColor, fontSize: 18.0),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              demoTopRatedDr("assests/images/femaledr.jpg", "Dr. Zac Wolff", "Address123", "4.4", ""),
              demoTopRatedDr("assests/images/maledoctor.png", "Dr. Fred Mask", "Address123", "4.3", ""),
              demoTopRatedDr("assests/images/maledr.jfif", "Dr. Zac Wolff", "Address123", "4.4", ""),
              demoTopRatedDr("assests/images/femaledr.jpg", "Dr. Fred Mask", "Address123", "4.3", ""),
              demoTopRatedDr("assests/images/femaledr.jpg", "Dr. Zac Wolff", "Address123", "4.4", ""),
              demoTopRatedDr("assests/images/maledoctor.png", "Dr. Fred Mask", "Address123", "4.3", ""),
              demoTopRatedDr("assests/images/maledr.jfif", "Dr. Zac Wolff", "Address123", "4.4", ""),
              demoTopRatedDr("assests/images/femaledr.jpg", "Dr. Fred Mask", "Address123", "4.3", ""),
              demoTopRatedDr("assests/images/femaledr.jpg", "Dr. Fred Mask", "Address123", "4.3", "")
            ],
          ),
        ),
      ),
    );
  }


Widget demoTopRatedDr(String img, String name, String address,
      String rating, String distance) {
    var size = MediaQuery.of(context).size;
    return Container(
      // onTap: () {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorDetailPage()));
      // },
      child: Container(
        height: 90,
        // width: size.width,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
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
                        color: kPrimaryColor,
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
                          address,
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3, left: size.width * 0.30),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Rating: ",
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  rating,
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              )
                            ],
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
    );
  }
}