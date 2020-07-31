import 'dart:convert';

import 'package:clean_house/models/api/cliente.dart';
import 'package:clean_house/models/api/user.dart';
import 'package:clean_house/models/api/usuario-api.dart';
import 'package:clean_house/services/usuario-service.dart';
import 'package:clean_house/view/home/home-page-cliente.dart';
import 'package:clean_house/view/widgets/buttons/btn-generic.dart';
import 'package:flutter/material.dart';

import 'package:clean_house/view/widgets/buttons/btn-cadastrar.dart';
import 'package:clean_house/view/widgets/buttons/input-email.dart';
import 'package:clean_house/view/widgets/buttons/input-senha.dart';

import 'package:clean_house/view/widgets/background.dart';
import 'package:clean_house/constants/cores.dart';
import 'package:http/http.dart';

import 'cadastro/escolha-perfil.page.dart';

cadastrastrese(contexto) => Navigator.push(contexto,
    MaterialPageRoute(builder: (BuildContext context) => EscolhaPerfil()));

class LoginPage extends StatelessWidget {
  var user = User();
  var userService = UsuarioService();

  void goToCliente(contexto) => Navigator.push(contexto,
      MaterialPageRoute(builder: (BuildContext context) => HomePageCliente()));

  void loginUser() async {
    Response respo = await userService.login(jsonEncode(user.toJson()));
    if (respo.statusCode == 200) {
      // var newUser = UsuarioApi.fromJson(
      //     jsonDecode(utf8.decode(respo.body.runes.toList())));
      var resp = jsonDecode(utf8.decode(respo.body.runes.toList()));
      if (resp['usuario']['tipo'] == 'cliente') {
        var cliente = Cliente.fromJson(
            jsonDecode(utf8.decode(respo.body.runes.toList())));
        print(cliente.celular);
      }
      // print(respo.body['usuario']);

      // print(respo.body);
    } else {
      print("=--=-=sdsd");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: Background.desenha("background.png"),
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        child: ListView(
          children: <Widget>[
            Text(
              "Bem Vindo (a)!",
              style: TextStyle(color: Colors.white, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            inputEmail(user.setEmail),
            SizedBox(
              height: 13,
            ),
            inputSenha(user.setSenha),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              alignment: Alignment.centerRight,
              child: FlatButton(
                  onPressed: () => {},
                  child: Text(
                    "Recuperar Senha",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: myDarkBlue, fontSize: 19),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            btnGeneric("Entrar", myDarkBlue, loginUser, null, null),
            SizedBox(
              height: 10,
            ),
//              entrarGoogle(),
            btnGeneric("Entrar Com o Google", myDarkBlue, null,
                "marcas-e-logotipos.png", null),
            SizedBox(
              height: 10,
            ),
            btnGeneric(
                "Entrar Com o Facebook", myDarkBlue, null, "fb-icon.png", null),

            SizedBox(
              height: 10,
            ),
            btnCadastrar(context),
          ],
        ),
      ),
    );
  }
}
