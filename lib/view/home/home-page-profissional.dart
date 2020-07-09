import 'package:clean_house/constants/constantes-general.dart';
import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/widgets/app-bar/app-bares.dart';
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
              SizedBox(
                height: alturaTela * .07,
              ),
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
              Expanded(
                child: Container(
                  height: 10,
                  width: larguraTela * .8,
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 5,
                        child: Container(
                          height: alturaTela * .6,
                          width: larguraTela * .5,
                          // child: ,
                        ),
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
