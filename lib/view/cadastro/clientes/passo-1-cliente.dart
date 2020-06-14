import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'package:clean_house/controller/passos-controller.dart';

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
      body: Observer(
        builder: (_){
          return Container( child: passosController.passoAtual );
        },
      )
    );
  }
}