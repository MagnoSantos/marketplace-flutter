import 'package:flutter/material.dart';
import 'package:marketplace/widgets/produtos/product-item.widget.dart';

class ListaProdutos extends StatelessWidget {
  final Axis direcaoScroll;

  ListaProdutos({
    @required this.direcaoScroll,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: direcaoScroll,
        children: <Widget>[
          ItemProduto(
            titulo: "Titulo produto 1",
            descricao: "Descrição do produto 1",
            imagem: "assets/product-1.png",
            preco: 200,
          ),
          ItemProduto(
            titulo: "Titulo produto 2",
            descricao: "Descrição do produto 2",
            imagem: "assets/product-2.png",
            preco: 300,
          ),
          ItemProduto(
            titulo: "Titulo produto 3",
            descricao: "Descrição do produto 3",
            imagem: "assets/product-3.png",
            preco: 400,
          ),
          ItemProduto(
            titulo: "Titulo produto 4",
            descricao: "Descrição do produto 4",
            imagem: "assets/product-4.png",
            preco: 500,
          ),
        ],
      ),
    );
  }
}
