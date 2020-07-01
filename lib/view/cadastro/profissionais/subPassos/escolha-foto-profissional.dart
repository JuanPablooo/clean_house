import 'dart:convert';
import 'package:clean_house/view/home/home-page-cliente.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/models/usuario-model.dart';
import 'package:clean_house/services/profissional-service.dart';
import 'package:clean_house/view/cadastro/clientes/subPassos/escolher-foto.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:clean_house/view/widgets/buttons/btn-continuar.dart';
import 'package:clean_house/view/widgets/circulo-subpasso.dart';

class EscolhaFotoProfissional extends StatefulWidget
    implements SubPassAbstract {
  @override
  _EscolhaFotoProfissionalState createState() =>
      _EscolhaFotoProfissionalState();
}

class _EscolhaFotoProfissionalState extends State<EscolhaFotoProfissional> {
  @override
  Widget build(BuildContext context) {
    final UsuarioController userController =
        Provider.of<UsuarioController>(context);
    final PassosController passosController =
        Provider.of<PassosController>(context);
    ProfissionalService profissionalApi = ProfissionalService();

    void salvaProfissional(Usuario user) async {
      print('=-=-=-=-=-=--=-=--=-=--=-=-=-');
      String opJson = json.encode(user.toJson());
      Response response = await profissionalApi.insereProfissional(opJson);
      if (response.statusCode == 201) {
        //direcionar para a home do profissional
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (BuildContext context) => HomePage()));
      } else {
        print("nao fez o cadastro");
        //TODO mostrar a falha no cadastro para o usuario
      }
    }

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
                      offset: Offset(5, 5),
                      blurRadius: 10.0,
                      spreadRadius: .8,
                      color: Colors.grey),
                ]),
            child: Stack(
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
                        CirculoSubPasso(
                          corCirculo: myBlue,
                        ),
                        CirculoSubPasso(
                          corCirculo: myBlue,
                        ),
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
            titulo: "Finalizar",
            onPress: () => {salvaProfissional(userController.usuario)},
          ),
        )
      ],
    );
  }
}
