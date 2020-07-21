import 'package:clean_house/constants/constantes-general.dart';
import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/widgets/app-bar/app-bares.dart';
import 'package:clean_house/view/widgets/btn-generic.dart';
import 'package:clean_house/view/widgets/drawer-menu-cliente.dart';
import 'package:flutter/material.dart';

class NovoServicoCliente extends StatefulWidget {
  @override
  _NovoServicoClienteState createState() => _NovoServicoClienteState();
}

class _NovoServicoClienteState extends State<NovoServicoCliente> {
  bool passar = false;
  bool comida = false;
  bool limpar = false;
  String dropdownValue = 'casa 1';
  void desabilitaTodos() {
    setState(() {
      passar = false;
      comida = false;
      limpar = false;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                          Text('Suldeste')
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: alturaTela * .06),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DropdownButton<String>(
                        value: dropdownValue,
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
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['casa 1', 'casa 2', 'caso 3']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text('kkkkk'),
                          );
                        }).toList(),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
