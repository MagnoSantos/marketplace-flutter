import 'package:flutter/material.dart';
import 'package:marketplace/pages/home.page.dart';
import 'package:marketplace/pages/inscrever.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xFFF5F5F5F5),
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  height: 420,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black12,
                        //Quantidade versus projeção da sombra
                        offset: new Offset(3, 4.0),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 60,
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  "Bem vindo,",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text("Entre para continuar"),
                              ],
                            ),
                            FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => InscreverPage(),
                                  ),
                                );
                              },
                              child: Text("Inscrever"),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            icon: Icon(Icons.email),
                            hintText: "E-mail",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(Icons.lock),
                            hintText: "Senha",
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text("Esqueceu sua senha?"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaginaPrincipal(),
                                ),
                              );
                            },
                            child: Text(
                              "Entrar",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    "- OU -",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {},
                    //Para adicionar imagem
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 24,
                          child: Image.asset(
                            "assets/facebook.png",
                            width: 24,
                          ),
                        ),
                        Text("Entrar com Facebook"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {},
                    //Para adicionar imagem
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 24,
                          child: Image.asset(
                            "assets/google.png",
                            width: 24,
                          ),
                        ),
                        Text("Entrar com Google"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
