import 'package:flutter/material.dart';
import 'package:flavor_market/flavor_market/bottomnavbar.dart';
import '../../flavor_market/constant.dart';

class ForgotPass extends StatefulWidget {
  static const routeName = 'forgot password';

  const ForgotPass({Key? key}) : super(key: key);

  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 60),
                Center(
                    child: Text(
                  "Forgot Password !!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                )),
                SizedBox(height: 10),
                Center(
                    child: Text(
                  "Enter your email to send new password",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )),
                SizedBox(height: 30),
                SizedBox(
                  width: 300,
                  child: Form(
                    key: globalkey,
                    child: Column(
                      children: [
                        textFormFiled(
                          label: 'Email',
                          iconShowPass: Icons.email,
                          iconHidePass: null,
                        ),
                        SizedBox(height: 4),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  child: defaultButton(
                      text: "send",
                      onPressedFun: () {
                        Navigator.pushReplacementNamed(
                            context, bottomNavBarScreen.routeName);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
