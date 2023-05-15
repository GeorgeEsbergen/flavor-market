import 'package:flutter/material.dart';

class Categor {
  final String productName;
  final String sizem;
  final String price;
  final String img;

  const Categor({
    required this.img,
    required this.productName,
    required this.sizem,
    required this.price,
  });
}

/***************************************************************************************************************/

class Fav {
  final String name;
  final Color color;
  final String img;

  const Fav({
    required this.name,
    required this.color,
    required this.img,
  });
}
