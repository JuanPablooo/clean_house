import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/widgets/background.dart';
import 'package:clean_house/view/widgets/buttons/btn-generic.dart';
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
      resizeToAvoidBottomInset : false,
      body: Container(
        decoration: Background.desenha("background.png"),
        padding: EdgeInsets.only(top: 20, left: 25, right: 25 ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 35,
            ),
            Column(

              children: <Widget>[
                Text(
                  "Cadastre-se como:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: SizedBox(
                height: 305,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    SizedBox(
                      height: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/funcionaria.png"),
                          ),
                          btnGeneric("PROFISSIONAL", myDarkBlue, null, null)
                        ],
                      )
                    ),
                    SizedBox(
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset("assets/cliente.png"),
                            ),
                            btnGeneric("CLIENTE", myDarkBlue, null, null)
                          ],
                        )
                    ),
                  ],
                ),
              ),
            ),
//            Container(
//              child: SizedBox(
//                height: 200,
//                width: 331,
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      children: <Widget>[
//                        SizedBox(
//                          width: 150,
//                          child: Column(
//                            mainAxisAlignment: MainAxisAlignment.spaceAround,
//                            children: <Widget>[
//                              SizedBox(
//                                height: 120,
//                                width: 100,
//                                child: Image.asset("assets/funcionaria.png"),
//                              ),
//                              Container(
//                                height: 47,
//                                width: 130,
//                                decoration: BoxDecoration(
//                                  color: Color.fromRGBO(22,119,199,1.0),
//                                  borderRadius: BorderRadius.all(Radius.circular(5)),
//                                  boxShadow: [
//                                    BoxShadow(
//                                      color: Color.fromRGBO(0, 0, 0, 0.25),
//                                      offset: Offset(1, 3),
//                                      blurRadius: 1.5,
//                                      spreadRadius: 0.8,
//                                    )
//                                  ]
//                                ),
//                                child: FlatButton(onPressed: ()=>{},
//                                    child: Row(
//                                      mainAxisAlignment: MainAxisAlignment.center,
//                                      children: <Widget>[
//                                        Text(
//                                          "Profissional",
//                                          style: TextStyle(color: Colors.white),
//                                        )
//                                      ],
//                                    )),
//                              ),
//                            ],),
//                        ),
//                        SizedBox(
//                          width: 150,
//                          child: Column(
//                            mainAxisAlignment: MainAxisAlignment.spaceAround,
//                            children: <Widget>[
//                              SizedBox(
//                                height: 120,
//                                width: 100,
//                                child: Image.asset("assets/cliente.png"),
//                              ),
//                              Container(
//                                height: 47,
//                                width: 130,
//                                decoration: BoxDecoration(
//                                  color: Color.fromRGBO(25,184,212,1),
//                                  boxShadow: [
//                                    BoxShadow(
//                                      color: Color.fromRGBO(0, 0, 0, 0.25),
//                                      offset: Offset(1, 3),
//                                      blurRadius: 1.5,
//                                      spreadRadius: 0.8,
//                                    )
//                                  ],
//                                  borderRadius: BorderRadius.all(Radius.circular(5))
//                                ),
//                                child: FlatButton(onPressed: ()=>{},
//
//                                    child: Row(
//                                      mainAxisAlignment: MainAxisAlignment.center,
//                                      children: <Widget>[
//                                        Text(
//                                          "Cliente",
//                                          style: TextStyle(
//                                            color: Colors.white
//                                          ),
//                                        )
//                                      ],
//                                    )),
//                              ),
//                            ],),
//                        ),
//
//                      ],
//                    ),
//                  ],
//                ),
//              ),
//            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "já possui conta ?"
                ),
                Container(
                  alignment: Alignment.center,
                  child: FlatButton(onPressed: null,
                      child: Text("Entre",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20
                        ),
                      )),
                )
              ],
            )

          ]
        ),
      ) ,
    );
  }
}