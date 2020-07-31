import 'dart:convert';

import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/models/api/cliente.dart';
import 'package:clean_house/models/api/residencia.dart';
import 'package:clean_house/models/api/servicos-api.dart';
import 'package:clean_house/models/api/solicitacao-servico-send.dart';
import 'package:clean_house/services/cliente-service.dart';
import 'package:clean_house/view/meu-servico/novo-servico/esolha-profissional.dart';
import 'package:clean_house/view/widgets/app-bar/app-bares.dart';
import 'package:clean_house/view/widgets/btn-generic.dart';
import 'package:clean_house/view/widgets/drawer-menu-cliente.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class NovoServicoCliente extends StatefulWidget {
  @override
  _NovoServicoClienteState createState() => _NovoServicoClienteState();
}

class _NovoServicoClienteState extends State<NovoServicoCliente> {
  bool passar = false;
  bool comida = false;
  bool limpar = false;
  DateTime date1;
  Residencia residencia;
  String dataDesejada;

  ClienteService clienteService = new ClienteService();
  Cliente clienteLogado = new Cliente();

  // String dropdownValue = 'casa 1';
  void initState() {
    super.initState();

    Residencia residencias = Residencia();
    residencias.nome = "casa";
    List<Residencia> res = new List<Residencia>();
    res.add(residencias);
    var cliente = new Cliente();
    cliente.residencias = res;

    clienteLogado = cliente;
    getDependencias();
  }

  void desabilitaTodos() {
    setState(() {
      passar = false;
      comida = false;
      limpar = false;
    });
  }

  void setClienteLogado(Cliente newCliente) {
    setState(() {
      clienteLogado = newCliente;
      if (newCliente != null) {
        residencia = newCliente.residencias[0];
      }
    });
  }

  //TODO pegar cliente cadastrado
  void getDependencias() async {
    Response response = await clienteService.buscaById('1');
    if (response != null && response.statusCode == 200) {
      var newCliente = Cliente();
      newCliente = Cliente.fromJson(
          jsonDecode(utf8.decode(response.body.runes.toList())));
      setClienteLogado(newCliente);
    }
  }

  @override
  Widget build(BuildContext context) {
    print(clienteLogado);
    print(clienteLogado.nomeCompleto);
    var appBar = MyAppBar.appBarCliente;
    double larguraTela = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    double alturaTela =
        (MediaQuery.of(context).size.height - appBar.preferredSize.height) -
            MediaQuery.of(context).padding.top;

    var styleTextDescription = TextStyle(
        color: Colors.white,
        fontSize: alturaTela * .03,
        fontWeight: FontWeight.bold);
    var styleTitle = TextStyle(
        color: Colors.white,
        fontSize: alturaTela * .045,
        fontWeight: FontWeight.bold);

    redirectEscolhaProfissional() {
      SolicitacaoDeServicoDTO sltServicoSend = SolicitacaoDeServicoDTO();
      sltServicoSend.residencia = residencia;
      sltServicoSend.idCliente = clienteLogado.id;
      ServicosApi servicos = ServicosApi(
          cozinhar: comida, faxina: limpar, passarLavarRoupa: passar);
      sltServicoSend.servicos = servicos;
      sltServicoSend.data = dataDesejada;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) =>
                  EscolhaProfissional(sltServicoSend)));
    }

    return Scaffold(
      appBar: appBar,
      drawer: MyDrawerMenuCliente(),
      body: Container(
        height: alturaTela,
        width: larguraTela,
        decoration: BoxDecoration(color: Color(0xFF4BB7CF)),
        child: Column(
          children: <Widget>[
            SizedBox(height: alturaTela * .05),
            Text(
              'Novo serviço',
              style: styleTitle,
            ),
            SizedBox(height: alturaTela * .05),
            Container(
              padding: EdgeInsets.all(alturaTela * .03),
              height: alturaTela * .7,
              width: larguraTela * .8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(alturaTela * .05),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 1.6),
                      spreadRadius: 2.5),
                ],
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: alturaTela * .03,
                  ),
                  Text('Quais serviços você deseja ?'),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          // Center(
                          //     child: InkWell(
                          //   onTap: () {
                          //     setState(() {
                          //       limpar = !limpar;
                          //     });
                          //   },
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //         shape: BoxShape.circle, color: myGreen),
                          //     child: Padding(
                          //       padding: const EdgeInsets.all(10.0),
                          //       child: limpar
                          //           ? Icon(
                          //               Icons.check,
                          //               size: 30.0,
                          //               color: Colors.white,
                          //             )
                          //           : Icon(
                          //               Icons.check_box_outline_blank,
                          //               size: 30.0,
                          //               color: myGreen,
                          //             ),
                          //     ),
                          //   ),
                          // )),
                          Checkbox(
                            value: limpar,
                            onChanged: (bool newValue) => {
                              setState(() {
                                limpar = newValue;
                              })
                            },
                          ),
                          Text('Limpar a casa')
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            value: comida,
                            onChanged: (bool newValue) => {
                              setState(() {
                                comida = newValue;
                              })
                            },
                          ),
                          Text('Cozinhar')
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            value: passar,
                            onChanged: (bool newValue) => {
                              setState(() {
                                passar = newValue;
                              })
                            },
                          ),
                          Text('Lavar roupa')
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: alturaTela * .03),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        date1 == null
                            ? Container()
                            : Text(
                                "Data",
                                style: TextStyle(color: myBlue),
                              ),
                        SizedBox(
                          width: 5,
                        ),
                        RaisedButton(
                          color: myBlue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Text(
                            date1 != null
                                ? DateFormat('dd-MM-yyyy').format(date1)
                                : 'Escolha a data',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            showDatePicker(
                                    // locale: Locale(''),
                                    context: context,
                                    initialDate:
                                        date1 != null ? date1 : DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime(2022))
                                .then((value) {
                              setState(() {
                                date1 = value;
                                dataDesejada =
                                    DateFormat('yyyy-dd-MM').format(value);
                              });
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DropdownButton<Residencia>(
                        value: clienteLogado.residencias[0],
                        icon: Icon(
                          Icons.arrow_downward,
                          color: myBlue,
                        ),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: myBlue),
                        underline: Container(
                          height: 2,
                          color: myBlue,
                        ),
                        onChanged: (Residencia newValue) {
                          setState(() {
                            residencia = newValue;
                          });
                        },
                        items: clienteLogado.residencias
                            .map<DropdownMenuItem<Residencia>>(
                                (Residencia value) {
                          return DropdownMenuItem<Residencia>(
                            value: value,
                            child: Text(
                                value.nome != null ? value.nome : "sem nome"),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                  SizedBox(height: alturaTela * .03),
                  Container(
                    width: larguraTela * .4,
                    height: alturaTela * .06,
                    child: BtnGenericoWidget(
                      fontSize: alturaTela * .03,
                      titulo: "outra residência",
                      color: myGreen,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: alturaTela * .03),
            Container(
              width: larguraTela * .75,
              height: alturaTela * .08,
              child: BtnGenericoWidget(
                fontSize: alturaTela * .03,
                color: myGreen,
                onPress: redirectEscolhaProfissional,
              ),
            )
          ],
        ),
      ),
    );
  }
}
