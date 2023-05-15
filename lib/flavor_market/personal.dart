import 'package:flutter/material.dart';
import 'package:flavor_market/flavor_market/constant.dart';

class personalScreen extends StatelessWidget {
  const personalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Container(
                height: 70,
                width: double.infinity,
                child: Row(
                  children: [
                    Image(image: AssetImage("assets/images/music.jpeg")),
                    SizedBox(width: 5),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Asfar Hossen",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.mode_edit_outlined,
                              color: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(height: 4),
                        Text(
                          "imsbna432@gmail.com",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Divider(
              color: Colors.black.withOpacity(0.3),
            ),
            ListTileStyl(
              leadingIcon: Icons.shopping_bag_outlined,
              title1: "Orders",
            ),
            Divider(
              color: Colors.black.withOpacity(0.3),
            ),
            ListTileStyl(
                leadingIcon: Icons.post_add_sharp, title1: "My Details"),
            Divider(
              color: Colors.black.withOpacity(0.3),
            ),
            ListTileStyl(
                leadingIcon: Icons.location_on_outlined,
                title1: "Delivery Address"),
            Divider(
              color: Colors.black.withOpacity(0.3),
            ),
            ListTileStyl(
                leadingIcon: Icons.payment_sharp, title1: "Payment Method"),
            Divider(
              color: Colors.black.withOpacity(0.3),
            ),
            ListTileStyl(
                leadingIcon: Icons.battery_saver_rounded, title1: "Promo Card"),
            Divider(
              color: Colors.black.withOpacity(0.3),
            ),
            ListTileStyl(
                leadingIcon: Icons.notifications_none_sharp,
                title1: "Notifecations"),
            Divider(
              color: Colors.black.withOpacity(0.3),
            ),
            ListTileStyl(
                leadingIcon: Icons.help_outline_outlined, title1: "Help"),
            Divider(
              color: Colors.black.withOpacity(0.3),
            ),
            ListTileStyl(
                leadingIcon: Icons.remove_circle_outline_rounded,
                title1: "About"),
            Divider(
              color: Colors.black.withOpacity(0.3),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 12, right: 12, top: 20),
              height: 75,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.resolveWith((states) => 0),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13))),
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.grey.withOpacity(0.3)),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.green,
                    ),
                    Text(
                      "Log Out",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.green),
                    ),
                    Container()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
