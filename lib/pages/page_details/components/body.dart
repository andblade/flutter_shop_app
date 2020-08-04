import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/product.dart';
import 'package:flutter_shop_app/pages/page_details/components/add_cart.dart';
import 'package:flutter_shop_app/pages/page_details/components/cart_counter.dart';
import 'package:flutter_shop_app/pages/page_details/components/color_and_size.dart';
import 'package:flutter_shop_app/pages/page_details/components/description.dart';
import 'package:flutter_shop_app/pages/page_details/components/product_image_title.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                
                // Container branco com descrição do item
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.38),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      // SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product),
                      // SizedBox(height: kDefaultPaddin / 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CartCounter(),
                          Container(
                            padding: EdgeInsets.all(8),
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Color(0xFFFF6464),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset('assets/icons/heart.svg'),
                          )
                        ],
                      ),
                      // SizedBox(height: kDefaultPaddin / 2),
                      AddCart(product: product),
                    ],
                  ),
                ),

                // Nome e Imagem do produto
                ProductImageTitle(product: product),

              ]
            ),
          )
        ],
      ),
    );
  }
}