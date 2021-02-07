
import 'package:carbon_emission/screens/login.dart';
import 'package:carbon_emission/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen_2 extends StatelessWidget {
  static const routeName = '/splashScreen_2';
  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, left: 35, right: 35, bottom: 40),
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(LogIn.routeName);
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22,
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: ht * 0.35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/splash_2.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: ht * 0.08,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Reduce",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: ht * 0.04,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Reduce your carbon emission\nand help us create a healthy\nenvironment",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Container(
                  height: ht * 0.01,
                  width: wt * 0.08,
                  decoration: BoxDecoration(
                      color: Color(0xffC4C4C4),
                      border: Border.all(
                        color: Color(0xffC4C4C4),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                SizedBox(
                  width: wt * 0.015,
                ),
                Container(
                  height: ht * 0.01,
                  width: wt * 0.08,
                  decoration: BoxDecoration(
                      color: Color(0xff4FAB8A),
                      border: Border.all(
                        color: Color(0xff4FAB8A),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Spacer(),
                GestureDetector(
                   onTap: () {
                    Navigator.of(context).pushNamed(LogIn.routeName);
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
