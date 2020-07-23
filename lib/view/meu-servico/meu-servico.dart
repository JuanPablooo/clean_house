import 'dart:convert';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/models/api/profissional.dart';
import 'package:clean_house/models/api/solicitacao-servico.dart';
import 'package:clean_house/services/profissional-service.dart';
import 'package:clean_house/view/meu-servico/profissional/listagem-servicos.dart';
import 'package:clean_house/view/widgets/app-bar/app-bares.dart';
import 'package:clean_house/view/widgets/card-servico-solicitado.dart';
import 'package:clean_house/view/widgets/drawer-meu-profissional.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MeuServico extends StatefulWidget {
  MeuServico({Key key}) : super(key: key);

  @override
  _MeuServicoState createState() => _MeuServicoState();
}

class _MeuServicoState extends State<MeuServico> {
  int _selectedIndex = 0;
  PageController _pageController;
  ProfissionalService profissionalService = ProfissionalService();

  Profissional profissional = new Profissional();

  void initState() {
    super.initState();
    getDependencias();
    _pageController = PageController();
  }

  setProfissional(Profissional prof) {
    setState(() {
      profissional = prof;
    });
  }

  void getDependencias() async {
    Response response = await profissionalService.buscaProfissionalById('1');

    if (response != null && response.statusCode == 200) {
      profissional = Profissional.fromJson(jsonDecode(response.body));
      setProfissional(profissional);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
        "rua": "Rua dos 2",
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

  @override
  Widget build(BuildContext context) {
    var appBar = MyAppBar.appBarCliente;
    var size = MediaQuery.of(context).size;
    double larguraTela = size.width;
    double alturaTela = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    print(profissional.solicitacaoDeServicos);
    return Container(
      child: Scaffold(
        appBar: appBar,
        body: Stack(
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
                    child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() => _selectedIndex = index);
                  },
                  children: <Widget>[
                    ListagemServicos(
                      alturaTela: alturaTela,
                      larguraTela: larguraTela,
                      titulo: "Meus Serviços",
                      servicos: profissional.getPendentes(),
                    ),
                    ListagemServicos(
                      alturaTela: alturaTela,
                      larguraTela: larguraTela,
                      titulo: "Finalizados",
                      servicos: profissional.getFinalizados(),
                    ),
                    ListagemServicos(
                      alturaTela: alturaTela,
                      larguraTela: larguraTela,
                      titulo: "Recusados",
                      servicos: profissional.getRecusados(),
                    ),
                  ],
                ))
              ],
            ),
          ],
        ),
        drawer: MyDrawerMenuProfissional(),
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: myDarkBlue,
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.autorenew),
              title: Text('Pendentes'),
              activeColor: myBlue,
              inactiveColor: Colors.white,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.check_circle),
                title: Text('Finalizados'),
                inactiveColor: Colors.white,
                activeColor: myGreen),
            BottomNavyBarItem(
              icon: Icon(Icons.close),
              title: Text('Cancelados'),
              inactiveColor: Colors.white,
              activeColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
