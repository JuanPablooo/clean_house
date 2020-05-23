import 'package:clean_house/view/widgets/buttons/btn-cadastrar.dart';
import 'package:clean_house/view/widgets/buttons/btn-entrar-facebook.dart';
import 'package:clean_house/view/widgets/buttons/btn-entrar-google.dart';
import 'package:clean_house/view/widgets/buttons/btn-entrar.dart';
import 'package:clean_house/view/widgets/buttons/input-email.dart';
import 'package:clean_house/view/widgets/buttons/input-senha.dart';
import 'package:flutter/material.dart';

import 'package:clean_house/view/widgets/email.widget.dart';
import 'package:clean_house/view/widgets/background.dart';
import 'package:clean_house/constants/cores.dart';

import 'escolha-perfil.page.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(

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
              btnEntrar(),
              SizedBox(
                height: 10,
              ),
              entrarGoogle(),
              SizedBox(
                height: 10,
              ),
              entrarFacebook(),

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