import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InscreverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xFFF5F5F5F5),
            padding: EdgeInsets.only(
              top: 80,
              left: 20,
              right: 20,
              bottom: 40,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 440,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black12,
                        offset: new Offset(1, 2.0),
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
                        Text(
                          "Inscrever",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Nome",
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "E-mail",
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Senha",
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                            onPressed: () {},
                            child: Text(
                              "Inscrever",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
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
