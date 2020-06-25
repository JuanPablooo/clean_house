import 'package:clean_house/controller/passos-controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
class PrimeirosPassosProfissional extends StatefulWidget {
  @override
  _PrimeirosPassosProfissionalState createState() => _PrimeirosPassosProfissionalState();
}

class _PrimeirosPassosProfissionalState extends State<PrimeirosPassosProfissional> {
  @override
  Widget build(BuildContext context) {
    final passosController = Provider.of<PassosController>(context);
    return Scaffold(
        // resizeToAvoidBottomInset : false,
        body: Observer(
          builder: (_){
            return Container( child: passosController.passoAtual );
          },
        )
    );
  }
}
