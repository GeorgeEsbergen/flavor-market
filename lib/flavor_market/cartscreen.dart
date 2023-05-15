import 'package:flutter/material.dart';
import 'constant.dart';
import 'databse/filejson.dart';

class cartScreen extends StatelessWidget {
  static const routeName = 'carteScreen';

  const cartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: [
              Text(
                "My Cart",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              dividerContainer(),
              Container(
                height: MediaQuery.of(context).size.height / 1.4,
                child: ListView.separated(
                  itemBuilder: (context, index) => Column(
                    children: Categorie.map((e) => myCartRow(
                          productName: e.productName,
                          sizem: e.sizem,
                          img: e.img,
                          price: e.price,
                        )).toList(),
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(),
                  itemCount: 1,
                ),
              ),
              defaultButton(text: "Go to Checkout", onPressedFun: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
