import 'package:flutter/material.dart';
import 'package:flavor_market/model/auth/login.dart';
import '../../flavor_market/constant.dart';

class signUpScreen extends StatelessWidget {
  static const routeName = 'signUpScreen';

  const signUpScreen({Key? key}) : super(key: key);

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
                SizedBox(height: 60),
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 7),
                Text('Enter your credintial to continue',
                    style: TextStyle(color: Colors.grey)),
                SizedBox(height: 40),
                Form(
                  key: globalkey,
                  child: Column(
                    children: [
                      textFormFiled(
                        label: 'Username',
                        iconHidePass: null,
                        iconShowPass: null,
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                      Container(
                        height: 30,
                        child: Row(
                          children: [
                            Text(
                              'By continuing ypu agree to our',
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextButton(
                              child: Text(
                                "Terms of Service ",
                                style: TextStyle(color: Colors.green),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        child: Row(
                          children: [
                            Text(
                              'and',
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextButton(
                              child: Text(
                                "Privacy Policy",
                                style: TextStyle(color: Colors.green),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      defaultButton(
                          text: "Sign Up",
                          onPressedFun: () {
                            Navigator.pushReplacementNamed(
                                context, loginScreen.routeName);
                          }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          TextButton(
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.green),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, loginScreen.routeName);
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
