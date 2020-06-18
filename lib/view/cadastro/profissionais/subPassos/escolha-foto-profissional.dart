import 'dart:convert';

import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/models/usuario-model.dart';
import 'package:clean_house/services/cliente-service.dart';
import 'package:clean_house/view/cadastro/clientes/subPassos/escolher-foto.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:clean_house/view/widgets/buttons/btn-continuar.dart';
import 'package:clean_house/view/widgets/buttons/btn-generic.dart';
import 'package:clean_house/view/widgets/circulo-subpasso.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EscolhaFotoProfissional extends StatefulWidget implements SubPassAbstract{
  @override
  _EscolhaFotoProfissionalState createState() => _EscolhaFotoProfissionalState();
}
ClienteService clienteApi = ClienteService();
  void mostraUsuario( Usuario user){
   print("salveeeee");
//   JsonCodec(user.criaJsonCliente(user));
    //var response = clienteApi.insereCliente();
    //print(response);
   print("salveeeee=-=-=-=-=-=--");
  }

class _EscolhaFotoProfissionalState extends State<EscolhaFotoProfissional> {
  @override
  Widget build(BuildContext context) {
    final UsuarioController userController = Provider.of<UsuarioController>(context);
    final PassosController passosController = Provider.of<PassosController>(context);
    return Column(
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
            child:   Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                   PegarImagen(),
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
                        CirculoSubPasso(corCirculo: myBlue,),
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
          height: 50,
          width: 300,
          child: BtnContinuar(
            titulo: "Finalizar",

            onPress: ()=>{mostraUsuario(userController.usuario)},
          ),
        )
      ],
    );
  }
}

