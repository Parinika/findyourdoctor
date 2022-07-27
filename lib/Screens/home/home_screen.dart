import 'package:findyourdoctor/constants.dart';
import 'package:flutter/material.dart';
import 'package:findyourdoctor/Screens/login/login_screen.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  // const _HomeState({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // padding: EdgeInsets.only(bottom: 5.0),
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
              // style: fontSiz,
            ),
            onPressed: () {
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => HomeScreen()));
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
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.search),
          // )
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
                    // fontWeight: FontWeight.bold,
                    color: lightBG,
                    fontSize: 17.0,
                  ),
                ),
                accountEmail: Text(
                  "abc@gmail.com",
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: lightBG,
                    fontSize: 17.0,
                  ),
                ),
                currentAccountPicture: Icon(
                  Icons.account_circle,
                  size: 75.0,
                ),
              ),
              //   child: Text(
              //     'Drawer Header',
              //     style: TextStyle(color: lightBG, fontSize: 20.0),
              //     textAlign: TextAlign.center,
              //   ),
              // ),
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
        // decoration: BoxDecoration(
        //   color:lightBG,
        //   borderRadius: BorderRadius.only(
        //     topRight:Radius.circular(30),
        //   )
        // ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                width: size.width,
                child: Text(
                  "Hi,",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: textcolor,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                width: size.width,
                child: Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 28.0,
                    color: textcolor,
                    fontFamily: 'Roboto',
                  ),
                ),
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
                              border: InputBorder.none, hintText: "Search"),
                        )
                        ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                          color: kBGColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.search,
                            color: lightBG,
                            size: 25,
                          ),
                        )),
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                width: size.width,
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: textcolor,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  height: 450,
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: SingleChildScrollView(
                    child: Column(
                      // scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 15.0, left: 10.0),
                        ),
                        Row(
                          children: [
                            demoCategories("assests/icons/brain.png",
                                "Neurologist", "8 Doctors"),
                            SizedBox(
                              width: 10.0,
                            ),
                            demoCategories("assests/icons/bone.png",
                                "Orthopedist", "10 Doctors"),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            demoCategories("assests/icons/eye.png",
                                "Ophthalmologist", "15 Doctors"),
                            SizedBox(
                              width: 10.0,
                            ),
                            demoCategories("assests/icons/gynecologist.png",
                                "Gynecologist", "9 Doctors"),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            demoCategories("assests/icons/psychologist.png",
                                "Psychologist", "12 Doctors"),
                            SizedBox(
                              width: 10.0,
                            ),
                            demoCategories("assests/icons/heart.png",
                                "Cardiologist", "11 Doctors"),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            demoCategories("assests/icons/tooth.png", "Dentist",
                                "17 Doctors"),
                            SizedBox(
                              width: 10.0,
                            ),
                            demoCategories("assests/icons/doctor.png",
                                "See All", "87 Doctors"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget demoCategories(String image, String name, String drQuantity) {
  return Container(
    width: 175,
    // height: 100,
    decoration: BoxDecoration(
      color: kBGColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(top: 20),
          child: Image.asset(image),
        ),
        Container(
          margin: EdgeInsets.only(top: 4),
          padding: EdgeInsets.only(top: 3),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 15.0,
              color: lightBG,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 4),
          padding: EdgeInsets.only(top: 7, bottom: 20),
          decoration: BoxDecoration(
            color: lightBG.withOpacity(0.01),
          ),
          child: Text(
            drQuantity,
            style: TextStyle(
              fontSize: 13.0,
              color: lightBG,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ],
    ),
  );
}
