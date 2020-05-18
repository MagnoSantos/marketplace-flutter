import 'package:flutter/material.dart';

class PaginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(15),
          color: Color(0xFFF5F5F5F5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              pesquisa(),
              SizedBox(
                height: 28,
              ),
              Text(
                "Categorias",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: listaCategorias(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget pesquisa() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(
        left: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(128),
        ),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.search),
          Container(
            width: 300,
            padding: EdgeInsets.only(
              left: 10,
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "Pesquisar ...",
                labelStyle: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ),
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listaCategorias() {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          itemCategoria(),
          itemCategoria(),
          itemCategoria(),
          itemCategoria(),
          itemCategoria(),
        ],
      ),
    );
  }

  Widget itemCategoria() {
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
        child: Image.asset(
          "assets/Icon_Devices.png",
        ),
      ),
    );
  }
}
