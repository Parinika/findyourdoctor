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
            children: [])))      
    );
  }
}
