import 'package:flutter/material.dart';
import 'package:marketplace/pages/product.page.dart';

class ItemProduto extends StatelessWidget {
  final String imagem;
  final String titulo;
  final String descricao;
  final double preco;

  ItemProduto({
    @required this.imagem,
    @required this.titulo,
    @required this.descricao,
    @required this.preco,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 180,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                    imagem: imagem,
                    titulo: titulo,
                    descricao: descricao,
                  ),
                ),
              );
            },
            child: Image.asset(
              imagem,
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            child: Text(
              titulo,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Text(
            descricao,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            "\$ $preco",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00C569),
            ),
          ),
        ],
      ),
    );
  }
}
