import 'package:flutter/material.dart';
import 'package:market_manager/constants.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        //scrollDirection: Axis.horizontal,
        itemCount: 100000,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisExtent: 200,
            childAspectRatio: 1,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8),
        itemBuilder: (ctx, i) => Container(
          //width: 50,
          //height: 50,
          //color: kColorAmber,
          child: Center(
            child: Text(myProducts[i]["name"]),
          ),
          decoration: BoxDecoration(
            color: kColorAmber,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
