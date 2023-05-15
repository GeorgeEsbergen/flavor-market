import 'package:flutter/material.dart';
import 'package:flavor_market/flavor_market/cartscreen.dart';
import 'package:flavor_market/flavor_market/explore.dart';
import 'package:flavor_market/flavor_market/fav_screen.dart';
import 'package:flavor_market/flavor_market/personal.dart';
import 'package:flavor_market/flavor_market/shop.dart';

class bottomNavBarScreen extends StatefulWidget {
  static const routeName = 'navBarScreen';

  const bottomNavBarScreen({Key? key}) : super(key: key);

  @override
  _bottomNavBarScreenState createState() => _bottomNavBarScreenState();
}

class _bottomNavBarScreenState extends State<bottomNavBarScreen> {
  final List pages = <Widget>[
    shopscreen(),
    exploreScreen(),
    cartScreen(),
    favouriteScreen(),
    personalScreen(),
  ];

  int selectedItem = 0;

  void selectedPage(int val) {
    setState(() {
      selectedItem = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedPage,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selectedItem,
        items: [
          BottomNavigationBarItem(
              label: "Shop", icon: Icon(Icons.maps_home_work_outlined)),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
