import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flavor_market/flavor_market/country_num.dart';

class startScreen extends StatefulWidget {
  const startScreen({Key? key}) : super(key: key);
  static const routeName = ' startScreen';

  @override
  _startScreenState createState() => _startScreenState();
}

class _startScreenState extends State<startScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((value) {
      Navigator.pushNamed(context, getStarted.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF53B175),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/images/apple.png")
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Flavor Market',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'online groceriet',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 200,
          ),
          SpinKitFadingCircle(
            color: Colors.white,
            size: 50,
            duration: Duration(milliseconds: 500),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
