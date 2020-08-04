import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/product.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCart extends StatelessWidget {
  const AddCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            width: 58,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color)
            ),
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/add_to_cart.svg', color: product.color,),
              onPressed: (){},
            ),
          ),
          Expanded(
            child: SizedBox(
              child: SizedBox(
                height: 50,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                  ),
                  color: product.color,
                  onPressed: (){},
                  child: Text(
                    'Comprar Agora'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    )
                  ),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}