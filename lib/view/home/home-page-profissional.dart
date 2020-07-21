import 'package:clean_house/constants/constantes-general.dart';
import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/home-profissional-controller.dart';
import 'package:clean_house/models/api/solicitacao-servico.dart';
import 'package:clean_house/view/widgets/app-bar/app-bares.dart';
import 'package:clean_house/view/widgets/card-servico-solicitado.dart';
import 'package:clean_house/view/widgets/drawer-meu-profissional.dart';
import 'package:flutter/material.dart';

class HomePageProfissional extends StatefulWidget {
  @override
  _HomePageProfissionalState createState() => _HomePageProfissionalState();
}

class _HomePageProfissionalState extends State<HomePageProfissional> {
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

    var listServices = ['primeiro', 'segundo'];
    var homeController = HomeProfissionalController();
    homeController.findServicos();
    print("=-=-=--=");
    SolicitacaoDeServico servico = SolicitacaoDeServico.fromJson({
      "id": 1,
      "residencia": {
        "id": 1,
        "quantidadeQuartos": 4,
        "quantidadeBanheiros": 0,
        "endereco": {
          "id": 2,
          "numero": "15",
          "cep": "03330-330",
          "cidade": "Osasco",
          "rua": "Rua dos anjos",
          "bairro": "Jd. Marina",
          "estado": "São Paulo",
          "pais": "Brasil",
          "complemento": "casa 4",
          "pontoReferencia": "Em frente ao bar."
        }
      },
      "data": 1596844800000,
      "servicos": null,
      "preco": 100.0,
      "observacao": "seria possivél chegar as 8 ?",
      "status": "Aguardando confirmação"
    });

    print("=-=-=--=");
    return Scaffold(
      appBar: appBar,
      drawer: MyDrawerMenuProfissional(),
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
                    itemCount: 2,
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
                            CardServicoSolicitado(
                              widthCard: larguraTela,
                              heightCard: alturaTela,
                              solicitacaoDeServico: servico,
                            ),
                          ],
                        );
                      }
                      return CardServicoSolicitado(
                        widthCard: larguraTela,
                        heightCard: alturaTela,
                        solicitacaoDeServico: servico,
                      );
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
