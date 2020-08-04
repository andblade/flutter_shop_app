import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';

// Categorias
class Categorias extends StatefulWidget {
  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  
  List<String> categorias = ['Hang bag', 'Jewellery', 'Footwear', 'Dresses', 'Others'];
  int selecionadoIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorias.length,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  selecionadoIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      categorias[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold, color: selecionadoIndex == index ? kTextColor : kTextLightColor
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: kDefaultPaddin / 4),
                      height: 2,
                      width: 30,
                      color: selecionadoIndex == index ? Colors.black : Colors.transparent,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}