import 'package:flavor_market/model/auth/forgot_password.dart';
import 'package:flavor_market/model/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:flavor_market/flavor_market/bottomnavbar.dart';
import '../../flavor_market/constant.dart';

class loginScreen extends StatefulWidget {
  static const routeName = 'loginScreen';

  const loginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    var globalkey = GlobalKey();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Center(
                  child: Container(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/apple.png" )
                  ),
                ),
                SizedBox(height: 70),
                Text(
                  'Loging',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 7),
                Text('Enter your emails and password',
                    style: TextStyle(color: Colors.grey)),
                SizedBox(height: 40),
                Form(
                  key: globalkey,
                  child: Column(
                    children: [
                      textFormFiled(
                        label: 'Email',
                        iconHidePass: null,
                        iconShowPass: null,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      textFormFiled(
                        label: 'password',
                        iconHidePass: Icons.visibility_off,
                        iconShowPass: Icons.visibility,
                      ),
                      SizedBox(height: 4),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, ForgotPass.routeName);
                          },
                        ),
                      ),
                      defaultButton(
                          text: "Log in ",
                          onPressedFun: () {
                            Navigator.pushReplacementNamed(
                                context, bottomNavBarScreen.routeName);
                          }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have account?",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          TextButton(
                            child: Text(
                              "SignUp",
                              style: TextStyle(color: Colors.green),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, signUpScreen.routeName);
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
