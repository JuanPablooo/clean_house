
import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/subpasso13.dart';
import 'package:clean_house/view/widgets/buttons/btn-continuar.dart';
import 'package:clean_house/view/widgets/circulo-subpasso.dart';
import 'package:clean_house/view/widgets/input-widget-generic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class SubPasso2 extends StatefulWidget implements SubPassAbstract{
  @override
  createState() {
    return new SubPasso2State();
  }
}
class SubPasso2State extends State<SubPasso2> {

  @override
  Widget build(BuildContext context) {
    final UsuarioController userController = Provider.of<UsuarioController>(context);
    final PassosController passosController = Provider.of<PassosController>(context);

    return  Column(
      children: <Widget>[
        SizedBox(
          height: 365,
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            padding: EdgeInsets.only(left: 25, right: 25, top: 25),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                    Radius.circular(30)
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(5,5),
                      blurRadius: 10.0,
                      spreadRadius: .8,
                      color: Colors.grey
                  )
                ]
            ),
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InputGeneric(labelText: "Telefone",
                    ),
                    InputGeneric(labelText: "Celular",
                    ),
                    SizedBox(height: 25,),
                    Text("Sexo", style: TextStyle(fontSize: 20, color: myDarkBlue),
                    ),
                    SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: myBlue,
                                  border: Border.all(
                                      color: myBlue
                                  )
                              ),
                              child: FlatButton(
                                child: Text(
                                  "Feminino",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15
                                  ),
                                ),
                                onPressed: (){
                                  print("salvee");
                                },
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: myBlue
                                  )
                              ),
                              child: FlatButton(
                                child: Text(
                                  "Masculino",
                                  style: TextStyle(
                                      color: myBlue,
                                      fontSize: 15
                                  ),
                                ),
                                onPressed: (){
                                  print("salvee");
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: myBlue
                            )
                          ),
                          child: FlatButton(
                            child: Text(
                              "Prefiro não informar",
                              style: TextStyle(
                                color: myBlue,
                                fontSize: 15
                              ),
                            ),
                            onPressed: (){
                              print("salvee");
                            },
                          ),
                        )

                      ],
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 30,
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CirculoSubPasso(corCirculo: myBlue,),
                        CirculoSubPasso(corCirculo: myBlue,),
                        CirculoSubPasso(corCirculo: myDarkBlue,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),


        SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 48,
          width: 300,
//            child:RaisedButton(onPressed: (){}, color: myDarkBlue, child: Text("clicque"),)
          child: BtnContinuar(onPress: passosController.trocaSubPasso,
            proximoPasso: SubPasso3(),
          ),

        )
      ],
    );
  }
}

