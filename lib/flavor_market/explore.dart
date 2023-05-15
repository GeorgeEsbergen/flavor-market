import 'package:flutter/material.dart';

import 'package:flavor_market/flavor_market/constant.dart';
import 'package:flavor_market/flavor_market/databse/filejson.dart';

class exploreScreen extends StatelessWidget {
  static const routeName = 'exploreScreen';

  const exploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Find Product",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  focusColor: Colors.grey,
                  hintStyle: TextStyle(color: Colors.black54, fontSize: 12),
                  hintText: "Search Store",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                ),
              ),
            ),
            SizedBox(height: 1),
            Flexible(
              child: GridView(
                  children: favo
                      .map((catData) => exoloreItem(
                            fn: () {},
                            img: catData.img,
                            name: catData.name,

                          ))
                      .toList(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10)),
            )
          ],
        ),
      ),
    );
  }
}
