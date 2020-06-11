import 'package:clean_house/view/cadastro/clientes/passo-3-cliente.dart';
import 'package:clean_house/view/widgets/buttons/btn-continuar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:clean_house/view/widgets/circulo-subpasso.dart';
import 'package:clean_house/view/widgets/input-widget-generic.dart';


class SubPasso2_2 extends StatelessWidget  implements SubPassAbstract{
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
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(5,5),
                      blurRadius: 10.0,
                      spreadRadius: .8,
                      color: Colors.grey
                  ),
                ]
            ),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 5,),
                Observer(builder: (_){
                  return InputGeneric(labelText: "Cidade", );
                },),
                SizedBox(height: 15,),
                InputGeneric(labelText: "Estado", ),

                SizedBox(height: 15,),
                InputGeneric(labelText: "Complemento", ),

                SizedBox(height: 20,),
                Container(
                  height: 30,
                  width: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CirculoSubPasso(corCirculo: myBlue,),
                      CirculoSubPasso(corCirculo: myBlue,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 50,
          width: 300,
          child: BtnContinuar(
            onPress: passosController.trocaPasso,
            proximoPasso: Passo3Cliente(),
          ),
        )
      ],
    );
  }
}
