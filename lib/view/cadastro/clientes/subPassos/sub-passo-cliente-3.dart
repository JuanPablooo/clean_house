import 'dart:convert';

import 'package:clean_house/models/usuario-model.dart';
import 'package:clean_house/services/cliente-service.dart';
import 'package:clean_house/view/cadastro/clientes/subPassos/escolher-foto.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/subpasso22.dart';
import 'package:clean_house/view/home/home-page-cliente.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:clean_house/view/widgets/circulo-subpasso.dart';
import 'package:clean_house/view/widgets/buttons/btn-continuar.dart';

class SubPassoCliente3 extends StatelessWidget implements SubPassAbstract {
  @override
  Widget build(BuildContext context) {
    final UsuarioController userController =
        Provider.of<UsuarioController>(context);
    final PassosController passosController =
        Provider.of<PassosController>(context);
    ClienteService clienteApi = ClienteService();

    void salvaCliente(Usuario user) async {
      print('=-=-=-=-=-=--=-=--=-=--=-=-=-');
      String opJson = json.encode(user.toJson());
      Response response = await clienteApi.insereCliente(opJson);
      if (response.statusCode == 201) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => HomePageCliente()));
      } else {
        print("nao fez o cadastro");
        //TODO mostrar a falha no cadastro para o usuario
        print(response.body);
        print(response);
      }
    }

    return Column(
      children: <Widget>[
        SizedBox(
          height: 365,
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 10.0,
                      spreadRadius: .8,
                      color: Colors.grey)
                ]),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[PegarImagen()],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 30,
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CirculoSubPasso(
                          corCirculo: myBlue,
                        ),
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
            titulo: "FINALIZAR",
            onPress: () => {salvaCliente(userController.usuario)},
          ),
        )
      ],
    );
  }
}
