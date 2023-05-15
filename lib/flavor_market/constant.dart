import 'package:flutter/material.dart';
import 'package:flavor_market/flavor_market/beveroges.dart';
import 'package:flavor_market/flavor_market/item.dart';

// ignore: must_be_immutable
class textFormFiled extends StatelessWidget {
  final String label;
  final IconData? iconShowPass;
  final IconData? iconHidePass;

  textFormFiled(
      {required this.label,
      required this.iconShowPass,
      required this.iconHidePass});

  var visabel = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Color(0xFF53B175),
      decoration: InputDecoration(
        labelText: label,
        focusColor: Color(0xFF53B175),
        labelStyle: TextStyle(color: Colors.grey),
        suffixIcon: IconButton(
          icon: visabel
              ? Icon(
                  iconHidePass,
                  color: Color(0xFF53B175),
                )
              : Icon(
                  iconShowPass,
                  color: Color(0xFF53B175),
                ),
          onPressed: () {
            {
              visabel = !visabel;
            }
          },
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Color(0xFF53B175),
        )),
      ),
      obscureText: visabel,
    );
  }
}

class defaultButton extends StatelessWidget {
  final Function() onPressedFun;

  final String text;

  const defaultButton(
      {Key? key, required this.text, required this.onPressedFun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12, top: 20),
      height: 75,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))),
          backgroundColor:
              MaterialStateProperty.resolveWith((states) => Color(0xFF53B175)),
        ),
        onPressed: onPressedFun,
        child: Text(text),
      ),
    );
  }
}

class ListTileStyl extends StatelessWidget {
  final IconData leadingIcon;

  final String title1;

  const ListTileStyl({required this.leadingIcon, required this.title1});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Icon(
        leadingIcon,
        color: Colors.black,
      ),
      title: Text(
        title1,
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colors.black,
      ),
    );
  }
}

class dotsContainer extends StatelessWidget {
  final double wid;
  final Color color;

  const dotsContainer({Key? key, required this.wid, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: wid,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

// this Class for dots that change bettween items $$$$$$$$$$
class dotsRow extends StatelessWidget {
  const dotsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        dotsContainer(wid: 20, color: Colors.green),
        SizedBox(width: 4),
        dotsContainer(wid: 5, color: Colors.grey),
        SizedBox(width: 4),
        dotsContainer(wid: 5, color: Colors.grey)
      ],
    );
  }
}

class dividerContainer extends StatelessWidget {
  const dividerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Divider(
        color: Colors.black.withOpacity(0.5),
      ),
    );
  }
}

// The Card is default in alot of Screens  @@@@@@@@@@@@@
class cardItem extends StatelessWidget {
  final Function() fn;
  final String productName;
  final String sizem;
  final String price;
  final String img;

  const cardItem(
      {required this.fn,
      required this.productName,
      required this.sizem,
      required this.price,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, itemScreen.routeName,
            arguments: productName);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
          height: 201,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.2)),
          child: Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 100,
                    child: Image(
                      image: AssetImage(img),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  productName,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                ),
                SizedBox(height: 2),
                Text(
                  sizem,
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class exoloreItem extends StatelessWidget {
  final Function() fn;
  final String name;

  final String img;

  const exoloreItem({
    required this.fn,
    required this.name,

    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, beverogesScreen.routeName);
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),

        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Column(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(img),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class seeAllRow extends StatelessWidget {
  final String text;

  const seeAllRow({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        Text(
          "See all",
          style: TextStyle(color: Colors.green),
        )
      ],
    );
  }
}

class listTileFavourite extends StatelessWidget {
  final String productName;
  final String sizem;

  final String img;

  const listTileFavourite({
    Key? key,
    required this.productName,
    required this.sizem,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image(
            image: AssetImage(img),
          ),
          title: Text(
            productName,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            sizem,
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.black,
            size: 30,
          ),
          onTap: () {},
        ),
        dividerContainer(),
      ],
    );
  }
}

class myCartRow extends StatelessWidget {
  final String productName;
  final String sizem;
  final String price;
  final String img;

  const myCartRow(
      {Key? key,
      required this.productName,
      required this.sizem,
      required this.price,
      required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15, right: 5),
      child: Container(
        height: 80,
        width: double.infinity,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Image(
                image: AssetImage(img),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    sizem,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 13),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.minimize),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "1",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.add,
                            color: Colors.green,
                          ),
                        ),
                      ])
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.close),
              Text(
                price,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

/*class listViewItems extends StatelessWidget {
  const listViewItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, _) {
            return Row(
              children: [
                cardItem(
                  fn: () {
                    Navigator.pushNamed(context, itemScreen.routeName);
                  },
                ),
              ],
            );
          },
          separatorBuilder: (_, context) => SizedBox(width: 10),
          itemCount: 5),
    );
  }
}*/
