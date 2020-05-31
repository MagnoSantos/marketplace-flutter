import 'package:flutter/material.dart';

import 'category-item.widget.dart';

class ListaCategorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ItemCategoria(
            imagem: "assets/Icon_Devices.png",
          ),
          ItemCategoria(
            imagem: "assets/Icon_Gadgets.png",
          ),
          ItemCategoria(
            imagem: "assets/Icon_Gaming.png",
          ),
          ItemCategoria(
            imagem: "assets/Icon_Mens_Shoe.png",
          ),
          ItemCategoria(
            imagem: "assets/Icon_Womens_Shoe.png",
          ),
        ],
      ),
    );
  }
}
