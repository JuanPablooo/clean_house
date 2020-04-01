import 'package:flutter/material.dart';

class EscolhaPerfil extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(25,184,212,1),
        title: Text("Priorizando a sua experiência!",
          style: TextStyle() ,
        ),
      ),
      body: Container(
        color: Color.fromRGBO(255,255,255, 1),
        padding: EdgeInsets.only(top: 20, left: 40, right: 40 ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Column(

              children: <Widget>[
                Text(
                  "Bem vindo(a) a Clean House",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: SizedBox(
                    child: Image.asset("assets/logo.png"),
                    height: 65,
                    width: 70,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "selecione o seu perfil de Cadastro",
                  style: TextStyle(fontSize: 17, color: Colors.black87),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: SizedBox(
                height: 200,
                width: 331,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              SizedBox(
                                height: 120,
                                width: 100,
                                child: Image.asset("assets/funcionaria.png"),
                              ),
                              Container(
                                height: 47,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(22,119,199,1.0),
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      offset: Offset(1, 3),
                                      blurRadius: 1.5,
                                      spreadRadius: 0.8,
                                    )
                                  ]
                                ),
                                child: FlatButton(onPressed: ()=>{},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Profissional",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    )),
                              ),
                            ],),
                        ),
                        SizedBox(
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              SizedBox(
                                height: 120,
                                width: 100,
                                child: Image.asset("assets/cliente.png"),
                              ),
                              Container(
                                height: 47,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(25,184,212,1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      offset: Offset(1, 3),
                                      blurRadius: 1.5,
                                      spreadRadius: 0.8,
                                    )
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: FlatButton(onPressed: ()=>{},

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Cliente",
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ],),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),

          ]
        ),
      ) ,
    );
  }
}