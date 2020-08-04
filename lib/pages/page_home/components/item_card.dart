import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/product.dart';

class ItemCard extends StatelessWidget {
  
  final Product product;
  final Function press;
  const ItemCard({
    Key key, this.product, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // width: MediaQuery.of(context).size.width * 0.40, // width: 160,
              // height: MediaQuery.of(context).size.height * 0.30, // height: 180,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Hero(
                tag: '${product.id}',
                child: Image.asset(product.image)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(product.title, style: TextStyle(color: kTextLightColor),),
          ),
          Text('\$${product.price}', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}