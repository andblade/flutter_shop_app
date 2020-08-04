import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {

  int numItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineBtn(
          newIcon: Icons.remove,
          press: (){
            if (numItems > 1) {
              setState(() {
                numItems--;
              });
            }
          }
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6
          ),
        ),
        buildOutlineBtn(
          newIcon: Icons.add,
          press: (){
            setState(() {
              numItems++;
            });
          }
        ),
      ],
    );
  }

  SizedBox buildOutlineBtn({IconData newIcon, Function press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          onPressed: press,
          child: Icon(newIcon),
        ),
      );
  }
}