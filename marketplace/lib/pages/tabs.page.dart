import 'package:flutter/material.dart';
import 'package:marketplace/pages/cart.page.dart';
import 'package:marketplace/pages/home.page.dart';
import 'package:marketplace/pages/login.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Filhos do tab principal
      body: TabBarView(
        children: <Widget>[
          PaginaPrincipal(),
          CartPage(),
          LoginPage(),
        ],
      ),
      //Itens com ícones referentes a cada page
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: new Icon(Icons.home),
          ),
          Tab(
            icon: new Icon(Icons.shopping_cart),
          ),
          Tab(
            icon: new Icon(Icons.perm_identity),
          ),
        ],
        //Configurações do indicador embaixo do ícone
        labelColor: Colors.green,
        unselectedLabelColor: Colors.black12,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.green,
      ),
    );
  }
}
