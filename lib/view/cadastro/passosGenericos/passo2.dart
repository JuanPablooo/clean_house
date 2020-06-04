import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/subpasso21.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/view/widgets/background.dart';


class Passo2 extends StatelessWidget implements SubPassAbstract{
  @override
  Widget build(BuildContext context) {
    final UsuarioController userController = Provider.of<UsuarioController>(context);
    final passosController = Provider.of<PassosController>(context);
    passosController.trocacaminhoImg("assets/passo2c.png");
    passosController.trocaSubPasso(SubPasso2_1() );
    return Observer(
      builder: (_){
        return Container(
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
                    child: Image.asset(passosController.caminhoImg),
                  ),
                ),
              ),
              SizedBox(height: 55,),
              Container( child: passosController.subPassoAtual,)
            ],
          ),
        );
      },
    );
  }
}
