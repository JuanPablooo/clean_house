import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/view/widgets/background.dart';



class Passo1Cliente extends StatefulWidget {
  @override
  _Passo1Cliente createState() {
    return _Passo1Cliente();
  }
}


class _Passo1Cliente extends State<Passo1Cliente> {

  @override
  Widget build(BuildContext context) {
    final passosController = Provider.of<PassosController>(context);
    return Scaffold(
      resizeToAvoidBottomInset : false,

      body: Container(
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
            SizedBox(height: 55,),
            Observer(
              builder: (_){
                return Container(
                  child: passosController.subPassoAtual,
                ) ;
              },
            )
          ],
        ),
      )
    );
  }
}


