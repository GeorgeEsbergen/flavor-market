import 'package:flavor_market/model/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:flavor_market/flavor_market/bottomnavbar.dart';
import 'package:flavor_market/flavor_market/explore.dart';
import 'package:flavor_market/flavor_market/item.dart';
import 'package:flavor_market/model/auth/login.dart';
import 'model/auth/forgot_password.dart';
import 'flavor_market/beveroges.dart';
import 'flavor_market/country_num.dart';

import 'flavor_market/start_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Store',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context)=>startScreen(),
        getStarted.routeName: (context) =>  getStarted(),
        loginScreen.routeName:(context) =>  loginScreen(),
        signUpScreen.routeName:(context) =>  signUpScreen(),
        beverogesScreen.routeName:(context) =>  beverogesScreen(),
        bottomNavBarScreen.routeName:(context) =>  bottomNavBarScreen(),
        exploreScreen.routeName:(context) =>  exploreScreen(),
        itemScreen.routeName:(context) =>  itemScreen(),
        ForgotPass.routeName:(context) =>  ForgotPass(),


      }


    );
  }
}


