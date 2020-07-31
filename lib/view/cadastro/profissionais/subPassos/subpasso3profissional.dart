import 'package:clean_house/view/cadastro/clientes/passo-3-cliente.dart';
import 'package:clean_house/view/cadastro/clientes/subPassos/escolher-foto.dart';
import 'package:clean_house/view/cadastro/profissionais/subPassos/subpasso-escolha-cidades.dart';
import 'package:clean_house/view/widgets/buttons/btn-continuar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:clean_house/view/widgets/circulo-subpasso.dart';
import 'package:clean_house/view/widgets/input-widget-generic.dart';

class SubPassoProfissional3_1 extends StatefulWidget
    implements SubPassAbstract {
  @override
  _SubPassoProfissional3_1State createState() =>
      _SubPassoProfissional3_1State();
}

class _SubPassoProfissional3_1State extends State<SubPassoProfissional3_1> {
  bool norte = false;
  bool leste = false;
  bool suldeste = false;
  bool oeste = false;
  List<String> cidadesNorte = [
    'Caieiras',
    'Cajamar',
    'Francisco-Morato',
    'Franco da Rocha',
    'Mairiporã'
  ];
  List<String> cidadesLeste = [
    'Arujá',
    'Biritiba-Mirim',
    'Ferraz de Vasconcelos',
    'Guararema',
    'Guarulhos',
    'Itaquaquecetuba',
    'Mogi das Cruzes',
    'Poá',
    'Salesópolis',
    'Santa Isabel',
    'Suzano'
  ];
  List<String> cidadesSudeste = [
    'Diadema',
    'Mauá',
    'Ribeirão Pires',
    'Rio Grande da Serra',
    'Santo André',
    'São Bernardo do Campo',
    'São Caetano do Sul'
  ];
  List<String> cidadesSudoeste = [
    'Cotia',
    'Embu das Artes',
    'Embu-Guaçu',
    'Itapecerica da Serra',
    'Juquitiba',
    'São Lourenço da Serra',
    'Taboão da Serra',
    'Vargem Grande Paulista'
  ];

  void desabilitaTodos() {
    setState(() {
      norte = false;
      leste = false;
      suldeste = false;
      oeste = false;
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
            padding: EdgeInsets.only(left: 25, right: 25, top: 25),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 10.0,
                      spreadRadius: .8,
                      color: Colors.grey),
                ]),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: norte,
                          onChanged: (bool newValue) => {
                            setState(() {
                              desabilitaTodos();
                              norte = newValue;
                            })
                          },
                        ),
                        Text('Norte')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: leste,
                          onChanged: (bool newValue) => {
                            setState(() {
                              desabilitaTodos();
                              leste = newValue;
                            })
                          },
                        ),
                        Text('Leste')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: suldeste,
                          onChanged: (bool newValue) => {
                            setState(() {
                              desabilitaTodos();
                              suldeste = newValue;
                            })
                          },
                        ),
                        Text('Suldeste')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: oeste,
                          onChanged: (bool newValue) => {
                            setState(() {
                              desabilitaTodos();
                              oeste = newValue;
                            })
                          },
                        ),
                        Text('Oeste')
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 180,
                    child: Column(
                      children: <Widget>[
                        // p((e) => Text(e)),
                        Row(
                          children: <Widget>[
                            Checkbox(
                              value: norte,
                              onChanged: (bool newValue) => {
                                setState(() {
                                  desabilitaTodos();
                                  norte = newValue;
                                })
                              },
                            ),
                            Text('Barueri')
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Checkbox(
                              value: leste,
                              onChanged: (bool newValue) => {
                                setState(() {
                                  desabilitaTodos();
                                  leste = newValue;
                                })
                              },
                            ),
                            Text('Carapicuíba')
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Checkbox(
                              value: suldeste,
                              onChanged: (bool newValue) => {
                                setState(() {
                                  desabilitaTodos();
                                  suldeste = newValue;
                                })
                              },
                            ),
                            Text('Itapevi')
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Checkbox(
                              value: suldeste,
                              onChanged: (bool newValue) => {
                                setState(() {
                                  desabilitaTodos();
                                  suldeste = newValue;
                                })
                              },
                            ),
                            Text('Jandira')
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Checkbox(
                              value: suldeste,
                              onChanged: (bool newValue) => {
                                setState(() {
                                  desabilitaTodos();
                                  suldeste = newValue;
                                })
                              },
                            ),
                            Text('Osasco')
                          ],
                        ),
                      ],
                    ),
                  ),
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
            proximoPasso: EscolhaCidade(),
          ),
        )
      ],
    );
  }
}
