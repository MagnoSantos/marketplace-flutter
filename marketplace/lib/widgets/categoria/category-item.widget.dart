import 'package:flutter/material.dart';

class ItemCategoria extends StatelessWidget {
  final String imagem;

  ItemCategoria({@required this.imagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 3,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(64),
        ),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Image.asset(imagem),
      ),
    );
  }
}
