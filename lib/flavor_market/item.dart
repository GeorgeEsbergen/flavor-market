import 'package:flutter/material.dart';
import 'package:flavor_market/flavor_market/constant.dart';

import 'databse/filejson.dart';

class itemScreen extends StatelessWidget {
  static const routeName = 'itemScreen';

  @override
  Widget build(BuildContext context) {
    final productName = ModalRoute.of(context)!.settings.arguments as String;
    final selected =
        Categorie.firstWhere((element) => element.productName == productName);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage(selected.img), fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios_new_rounded)),
                      Icon(Icons.file_upload_outlined),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.all(30.0), child: dotsRow()),
              ],
            ),
          ),
          ListTile(
            title: Text(
              productName,
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            subtitle: Text(selected.sizem),
            trailing: Icon(Icons.favorite_border),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height: 40,
                    width: 40,
                    child: Icon(Icons.minimize_outlined),
                  ),
                  SizedBox(width: 5),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "1",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(width: 9),
                  Icon(
                    Icons.add,
                    color: Colors.green,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  selected.price,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: Column(
              children: [
                dividerContainer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Detail",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 30,
                    ),
                  ],
                ),
                Text(
                  "Apples are good. Maybe Good for weight loss.Apples Maybe good for hearts.As part of healtful and variet diet",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8),
                dividerContainer(),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nutritions",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 18,
                          width: 28,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "100gr",
                            style: TextStyle(fontSize: 8),
                          ),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 19,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 8),
                dividerContainer(),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Review",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_outlined,
                          color: Colors.orange,
                          size: 19,
                        ),
                        Icon(
                          Icons.star_outlined,
                          color: Colors.orange,
                          size: 19,
                        ),
                        Icon(
                          Icons.star_outlined,
                          color: Colors.orange,
                          size: 19,
                        ),
                        Icon(
                          Icons.star_outlined,
                          color: Colors.orange,
                          size: 19,
                        ),
                        Icon(
                          Icons.star_outlined,
                          color: Colors.orange,
                          size: 19,
                        ),
                        SizedBox(width: 15),
                        Icon(Icons.arrow_forward_ios, size: 19),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 8),
                defaultButton(text: "Add To Basket", onPressedFun: () {})
              ],
            ),
          )
        ]),
      ),
    );
  }
}
