import 'package:flutter/material.dart';
import 'package:flavor_market/flavor_market/constant.dart';
import 'package:flavor_market/model/auth/login.dart';

class getStarted extends StatelessWidget {
  static const routeName = 'getStarted';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image(
            height: double.infinity,
            fit: BoxFit.cover,
            image: AssetImage("assets/images/wall.jpeg")),
        Column(
          children: [
            Expanded(child: Container()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/images/apple.png")),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "to our store",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Get Your groceries in as fast as one hour",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    defaultButton(
                      text: 'Get Started',
                      onPressedFun: () {
                        Navigator.pushReplacementNamed(
                            context, loginScreen.routeName);
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
