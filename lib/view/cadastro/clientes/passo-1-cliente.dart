import 'package:clean_house/view/cadastro/passosGenericos/passo1.dart';
import 'package:flutter/material.dart';

import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/widgets/background.dart';
import 'package:clean_house/view/widgets/buttons/btn-generic.dart';
import 'package:clean_house/view/widgets/buttons/input-email.dart';
import 'package:clean_house/view/widgets/circulo-subpasso.dart';
import 'package:clean_house/view/widgets/input-widget-generic.dart';


class Passo1Cliente extends StatefulWidget {
  @override
  _Passo1Cliente createState() {
    return _Passo1Cliente();
  }
}


class _Passo1Cliente extends State<Passo1Cliente> {

  @override
  Widget build(BuildContext context) {
    print(inputEmail());
    return Scaffold(
      resizeToAvoidBottomInset : false,

      body: Container(
//        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        decoration: Background.desenha("background-cinza2.png"),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 80,
              child: Container(
                padding:  EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/icon-voltar.png"),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: Container(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/passo1c.png"),
                ),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Passo1(),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.all(35),
              child: btnGeneric("CONTINUAR", myDarkBlue, null, null, 50.3),
            )

            //InputeGeneric(validacao: teste("este é p valor"),)

          ],
        ),
        
      )
    );
  }
}


