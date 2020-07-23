import 'package:clean_house/constants/constantes-general.dart';
import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/home-profissional-controller.dart';
import 'package:clean_house/models/api/profissional.dart';
import 'package:clean_house/models/api/solicitacao-servico.dart';
import 'package:clean_house/view/meu-servico/novo-servico/card-escolha.dart';
import 'package:clean_house/view/widgets/app-bar/app-bares.dart';
import 'package:clean_house/view/widgets/btn-generic.dart';
import 'package:clean_house/view/widgets/card-servico-solicitado.dart';
import 'package:clean_house/view/widgets/drawer-menu-cliente.dart';
import 'package:clean_house/view/widgets/drawer-meu-profissional.dart';
import 'package:flutter/material.dart';

class EscolhaProfissional extends StatefulWidget {
  @override
  _EscolhaProfissionalState createState() => _EscolhaProfissionalState();
}

class _EscolhaProfissionalState extends State<EscolhaProfissional> {
  @override
  Widget build(BuildContext context) {
    var appBar = MyAppBar.appBarCliente;
    double larguraTela = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    double alturaTela = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    var styleTextDescription = TextStyle(
        color: Colors.white,
        fontSize: alturaTela * .03,
        fontWeight: FontWeight.bold);

    Profissional profissional =
        Profissional(nomeCompleto: "Carlos Antônio", celular: "(11) 995545155");

    return Scaffold(
      appBar: appBar,
      drawer: MyDrawerMenuCliente(),
      body: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/fundo.png',
                  ),
                  fit: BoxFit.cover),
              color: Color(0xFF4BB7CF),
            ),
          ),
          Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 10,
                  width: larguraTela * .8,
                  child: ListView.builder(
                    itemCount: 3,
                    // physics: AlwaysScrollableScrollPhysics(parent: ),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      // Servico servico = homeController.servicos[index];
                      if (index == 0) {
                        // return the header
                        return new Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            SizedBox(height: alturaTela * .07),
                            Container(
                              width: larguraTela / 1,
                              height: alturaTela / 9,
                              child: Center(
                                child: Text(
                                  'Escolha um profissional',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: alturaTela * .05,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            CardEscolhaProfissional(
                              larguraTela: larguraTela,
                              alturaTela: alturaTela,
                              profissional: profissional,
                            ),
                            Container(
                              height: 10,
                              width: larguraTela * .8,
                              child: ListView.builder(
                                itemCount: 3,
                                // physics: AlwaysScrollableScrollPhysics(parent: ),
                                scrollDirection: Axis.vertical,
                                itemBuilder: (BuildContext context, int index) {
                                  // Servico servico = homeController.servicos[index];
                                  if (index == 0) {
                                    // return the header
                                    return new Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        SizedBox(height: alturaTela * .07),
                                        Container(
                                          width: larguraTela / 1,
                                          height: alturaTela / 9,
                                          child: Center(
                                            child: Text(
                                              'SERVIÇOS',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: alturaTela * .05,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }
                                  // return CardEscolhaProfissional(
                                  //   larguraTela: larguraTela,
                                  //   alturaTela: alturaTela,
                                  //   profissional: profissional,
                                  // );
                                },
                              ),
                            )
                          ],
                        );
                      }
                      return Container(
                          child: CardEscolhaProfissional(
                        larguraTela: larguraTela,
                        alturaTela: alturaTela,
                        profissional: profissional,
                      ));
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}