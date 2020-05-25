import 'package:clean_house/view/widgets/buttons/btn-generic.dart';
import 'package:flutter/material.dart';

import 'package:clean_house/view/widgets/buttons/btn-cadastrar.dart';
import 'package:clean_house/view/widgets/buttons/input-email.dart';
import 'package:clean_house/view/widgets/buttons/input-senha.dart';


import 'package:clean_house/view/widgets/background.dart';
import 'package:clean_house/constants/cores.dart';

import 'escolha-perfil.page.dart';

 cadastrastrese(contexto) => Navigator.push(
      contexto,
      MaterialPageRoute(
          builder: (BuildContext context)=> EscolhaPerfil())
  );


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset : false,

      body: Container(
        decoration: Background.desenha("background.png"),
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
          child: ListView(
            children: <Widget>[
              Text(
                "Bem Vindo (a)!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              inputEmail(),
              SizedBox(
                height: 13,
              ),
              inputSenha(),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                alignment: Alignment.centerRight,
                child: FlatButton(onPressed: ()=>{},
                    child: Text(
                      "Recuperar Senha",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: myDarkBlue,
                          fontSize: 19
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              btnGeneric("Entrar", myDarkBlue, null, null),
              SizedBox(
                height: 10,
              ),
//              entrarGoogle(),
              btnGeneric("Entrar Com o Google", myDarkBlue, null, "marcas-e-logotipos.png"),
              SizedBox(
                height: 10,
              ),
              btnGeneric("Entrar Com o Facebook", myDarkBlue, null, "fb-icon.png"),

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