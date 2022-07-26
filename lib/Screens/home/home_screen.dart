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
        centerTitle: true,
        // automaticallyImplyLeading: false,
        title: Image.asset(
          'assests/icons/logoLight.png',
          scale: 5.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10.0)),
        ),
        // child: Text("Welcome to Find my Doctor",
        //     style: TextStyle(
        //         fontFamily: 'Open Sans', fontWeight: FontWeight.bold)),
      ),
      drawer: Drawer(
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
              tileColor: lightBG,
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
              tileColor: lightBG,
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
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[]),
      ),
    );
  }
}
