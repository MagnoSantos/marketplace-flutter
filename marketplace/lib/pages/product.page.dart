import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String imagem;
  final String titulo;
  final String descricao;

  ProductPage({
    @required this.imagem,
    @required this.titulo,
    @required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Efeito para preenchimento imagem na página
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 500.0,
              floating: false,
              pinned: true,
              //Efeito de moficação do space bar com base no scroll
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(
                  imagem,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              child: Text(
                titulo,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(descricao),
            ),
          ],
        ),
      ),
    );
  }
}
