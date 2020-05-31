import 'package:flutter/material.dart';
import 'package:marketplace/widgets/categoria/category-list.widget.dart';
import 'package:marketplace/widgets/produtos/product-list.widget.dart';
import 'package:marketplace/widgets/search-box.widget.dart';

class PaginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          color: Color(0xFFF5F5F5F5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              SearchBox(),
              SizedBox(
                height: 10,
              ),
              Text(
                "Categorias",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: ListaCategorias(),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Mais vendidos",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text("Veja todos"),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                child: Container(
                  height: 380,
                  child: ListaProdutos(
                    direcaoScroll: Axis.horizontal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
