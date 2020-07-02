import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/subpasso12.dart';
import 'package:clean_house/view/widgets/buttons/btn-continuar.dart';
import 'package:clean_house/view/widgets/circulo-subpasso.dart';
import 'package:clean_house/view/widgets/input-widget-generic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubPasso1 extends StatefulWidget implements SubPassAbstract {
  @override
  _SubPasso1State createState() => _SubPasso1State();
}

class _SubPasso1State extends State<SubPasso1> {
  var validaNome = false;
  var validaDataNascimento = false;
  var validaCpf = false;

  setValidaNome() {
    setState(() {
      validaNome = true;
    });
  }

  setValidaDataNascimento() {
    setState(() {
      validaDataNascimento = true;
    });
  }

  setValidaCpf() {
    setState(() {
      validaCpf = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final UsuarioController userController =
        Provider.of<UsuarioController>(context);
    final PassosController passosController =
        Provider.of<PassosController>(context);
    return Column(
      children: <Widget>[
        SizedBox(
          height: 365,
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            padding: EdgeInsets.only(left: 25, right: 25),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 10.0,
                      spreadRadius: .8,
                      color: Colors.grey)
                ]),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    InputGeneric(
                      labelText: "Nome",
                      onChange: userController.usuario.changeNome,
                      errorText: validaNome ? userController.validaNome : null,
                      onTap: setValidaNome,
                    ),
                    InputGeneric(
                      labelText: "Data Nascimento",
                      controller: MaskedTextController(mask: '00-00-0000'),
                      tipoTeclado: TextInputType.number,
                      onChange: userController.usuario.changeDataNascimento,
                      errorText: validaDataNascimento
                          ? userController.validaData
                          : null,
                      onTap: setValidaDataNascimento,
                    ),
                    InputGeneric(
                      labelText: "CPF",
                      controller: MaskedTextController(mask: '000.000.000-00'),
                      tipoTeclado: TextInputType.number,
                      onChange: userController.usuario.changeCpf,
                      errorText: validaCpf ? userController.validaCpf : null,
                      onTap: setValidaCpf,
                    ),
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
                          corCirculo: myDarkBlue,
                        ),
                        CirculoSubPasso(
                          corCirculo: myDarkBlue,
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
            onPress: passosController.trocaSubPasso,
            proximoPasso: SubPasso2(),
          ),
        )
      ],
    );
  }
}
