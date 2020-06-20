import 'package:clean_house/constants/cores.dart';
import 'package:flutter/material.dart';

import '../../cadastro/escolha-perfil.page.dart';

Container btnCadastrar(contexto)=>Container(
  height: 30,
  alignment: Alignment.center,
  child: FlatButton(
    //usario clicou então tenho que enviar ele para a pagina onde se inicia o cadastro
      onPressed: (){
        Navigator.push(
            contexto,
            MaterialPageRoute(
                builder: (BuildContext context)=> EscolhaPerfil())
        );
      },
      child: Row(
        children: <Widget>[
          Text(
            "Não tem uma conta ? ",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 19
            ),
          ),Text(
            "Cadastre-se",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: myDarkBlue,
                fontSize: 19
            ),
          ),
        ],
      )
//      Text(
//        "Cadastre-se",
//        textAlign: TextAlign.center,
//        style: TextStyle(
//            color: myDarkBlue,
//            fontSize: 19
//        ),
//      )
  ),
);