import 'package:flutter/material.dart';

import 'constant.dart';
import 'databse/filejson.dart';

class favouriteScreen extends StatelessWidget {
  const favouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: [
              Text(
                "Favourite",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              dividerContainer(),
              Container(
                height: 500,
                child: ListView.separated(
                  itemBuilder: (context, index) => Column(
                    children: Categorie.map((e) => listTileFavourite(
                        productName: e.productName,
                        sizem: e.sizem,
                        img: e.img)).toList(),
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(),
                  itemCount: 1,
                ),
              ),
              /*listTileFavourite(),
              listTileFavourite(),
              listTileFavourite(),
              listTileFavourite(),
              listTileFavourite(),*/
              defaultButton(text: "Add All To Cart", onPressedFun: () {})
            ],
          ),
        ),
      ),
    );
  }
}
