import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/pages/page_home/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg'),
          onPressed: (){}
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icons/search.svg', color: kTextColor,),
            onPressed: (){}
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/cart.svg', color: kTextColor,),
            onPressed: (){}
          ),
          SizedBox(width: kDefaultPaddin / 2,)
        ],
      ),
      body: Body(),
    );
  }
}