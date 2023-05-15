import 'package:flutter/material.dart';
import 'package:flavor_market/flavor_market/constant.dart';
import 'package:flavor_market/flavor_market/databse/filejson.dart';

class beverogesScreen extends StatelessWidget {
  static const routeName = 'beveragesScreen';

  const beverogesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 15, left: 15),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new_rounded)),
              Text(
                "Beverages",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Icon(Icons.share)
            ]),
            Flexible(
              child: GridView(
                  children: Categorie.map((catData) => cardItem(
                        price: catData.price,
                        sizem: catData.sizem,
                        productName: catData.productName,
                        img: catData.img,
                        fn: () {},
                      )).toList(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 0.76,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12)),
            ),
          ],
        ),
      ),
    );
  }
}
