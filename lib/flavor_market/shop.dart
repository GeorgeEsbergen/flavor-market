import 'package:flutter/material.dart';
import 'package:flavor_market/flavor_market/constant.dart';

import 'databse/filejson.dart';

class shopscreen extends StatelessWidget {
  const shopscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 40,
                  width: 40,
                  child: Image.asset("assets/images/apple.png" )
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    size: 20,
                    color: Colors.black54,
                  ),
                  Text(
                    "Dhaka, Banassre",
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 10),
              Card(
                  elevation: 1,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/tt.jpeg"),
                            fit: BoxFit.cover)),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Fresh Vegetables",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(right: 40.0),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Get up To 40% OFF",
                                  style: TextStyle(color: Colors.green),
                                )),
                          ),
                          SizedBox(height: 20),
                          dotsRow()
                        ],
                      ),
                    ),
                  )),
              SizedBox(height: 20),
              seeAllRow(
                text: "Exclusive Offer",
              ),
              SizedBox(height: 20),
              Container(
                height: 211,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, _) => Row(
                          children: Categorie.map((e) => cardItem(
                                fn: () {},
                                productName: e.productName,
                                img: e.img,
                                sizem: e.sizem,
                                price: e.price,
                              )).toList(),
                        ),
                    separatorBuilder: (_, context) => SizedBox(width: 10),
                    itemCount: 1),
              ),
              SizedBox(height: 20),
              seeAllRow(
                text: "Best Selling",
              ),
              SizedBox(height: 20),
              Container(
                height: 211,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, _) => Row(
                          children: Categorie.map((e) => cardItem(
                                fn: () {},
                                productName: e.productName,
                                img: e.img,
                                sizem: e.sizem,
                                price: e.price,
                              )).toList(),
                        ),
                    separatorBuilder: (_, context) => SizedBox(width: 10),
                    itemCount: 1),
              ),
              SizedBox(height: 20),
              seeAllRow(text: "Groceries"),
              SizedBox(height: 10),
              Container(
                height: 90,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, _) {
                      return Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 75,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Pulses",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (_, context) => SizedBox(width: 10),
                    itemCount: 5),
              ),
              SizedBox(height: 10),
              Container(
                height: 211,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, _) => Row(
                          children: Categorie.map((e) => cardItem(
                                fn: () {},
                                productName: e.productName,
                                img: e.img,
                                sizem: e.sizem,
                                price: e.price,
                              )).toList(),
                        ),
                    separatorBuilder: (_, context) => SizedBox(width: 10),
                    itemCount: 1),
              ),
              SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}
