
import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/view/widgets/circulo-subpasso.dart';
import 'package:clean_house/view/widgets/input-widget-generic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class Passo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UsuarioController userController = Provider.of<UsuarioController>(context);

    return  SizedBox(
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
              return InputGeneric(labelText: "Nome",
                onChange: userController.usuario.changeNome,
                errorText: userController.validaNome,
              );
            },),
            SizedBox(height: 15,),
            InputGeneric(labelText: "CPF",
              onChange: userController.usuario.changeNome,
              errorText: userController.validaNome,
            ),

            SizedBox(height: 15,),
            InputGeneric(labelText: "Data Nascimento",
              onChange: userController.usuario.changeNome,
              errorText: userController.validaNome,
            ),
            SizedBox(height: 20,),
            Container(
              height: 30,
              width: 50,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CirculoSubPasso(corCirculo: myDarkBlue,),
                  CirculoSubPasso(),
                  CirculoSubPasso(),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
