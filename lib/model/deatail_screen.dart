import 'package:flutter/material.dart';
import 'package:flavor_market/model/constant.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF5F4EF),
          image: DecorationImage(
            image: AssetImage("assets/images/ux.jpeg"),
            alignment: Alignment.topRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 50, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_new_outlined),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ClipPath(
                clipper: BestSeller(),
                child: Container(
                  color: kBestSellerColor,
                  padding:
                      EdgeInsets.only(left: 10, top: 5, right: 20, bottom: 5),
                  child: Text("Best Seller".toUpperCase()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BestSeller extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
