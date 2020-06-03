
import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:clean_house/view/widgets/buttons/btn-continuar.dart';
import 'package:clean_house/view/widgets/buttons/btn-generic.dart';
import 'package:clean_house/view/widgets/circulo-subpasso.dart';
import 'package:clean_house/view/widgets/input-widget-generic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class SubPasso3 extends StatelessWidget  implements SubPassAbstract{
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
            child: ListView(
              children: <Widget>[
                SizedBox(height: 5,),
                Observer(builder: (_){
                  return InputGeneric(labelText: "Email",
                    onChange: userController.usuario.changeNome,
                  );
                },),
                SizedBox(height: 15,),
                InputGeneric(labelText: "Senha",
                  onChange: userController.usuario.changeNome,
                ),

                SizedBox(height: 15,),
                InputGeneric(labelText: "Confirmar senha",
                  onChange: userController.usuario.changeNome,
                ),
                SizedBox(height: 20,),
                Container(
                  height: 30,
                  width: 50,
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CirculoSubPasso(corCirculo: myBlue,),
                      CirculoSubPasso(corCirculo: myBlue,),
                      CirculoSubPasso(),
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
//            child:RaisedButton(onPressed: (){}, color: myDarkBlue, child: Text("clicque"),)
          child: BtnContinuar(onPress: passosController.trocaSubPasso,
            proximoPasso: SubPasso3(),
          ),

        )
      ],
    );
  }
}
