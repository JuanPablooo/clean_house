import 'package:clean_house/constants/constantes-general.dart';
import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/widgets/app-bar/app-bares.dart';
import 'package:clean_house/view/widgets/drawer-menu-cliente.dart';
import 'package:flutter/material.dart';

class HomePageCliente extends StatefulWidget {
  @override
  _HomePageClienteState createState() => _HomePageClienteState();
}

class _HomePageClienteState extends State<HomePageCliente> {
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
              SizedBox(
                height: alturaTela * .07,
              ),
              Container(
                width: larguraTela / 1,
                height: alturaTela / 9,
                child: Center(
                  child: Text(
                    'NOSSOS SERVIÇOS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: alturaTela * .05,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: alturaTela * .1,
                width: larguraTela * .5,
                child: Image.asset(
                  MyConstantes.pathImgVassoura,
                ),
              ),
              SizedBox(
                height: alturaTela * .02,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Limpeza: deixe sua casa limpinha',
                    style: styleTextDescription,
                  )
                ],
              ),
              SizedBox(
                height: alturaTela * .05,
              ),
              SizedBox(
                height: alturaTela * .1,
                width: larguraTela * .5,
                child: Image.asset(MyConstantes.pathImgCozinha),
              ),
              SizedBox(
                height: alturaTela * .02,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Cozinha: Profissionais que ',
                    style: styleTextDescription,
                  ),
                  Text(
                    'fazem o preparo da sua',
                    style: styleTextDescription,
                  ),
                  Text(
                    'comida',
                    style: styleTextDescription,
                  ),
                ],
              ),
              SizedBox(
                height: alturaTela * .05,
              ),
              SizedBox(
                height: alturaTela * .1,
                width: larguraTela * .5,
                child: Image.asset(MyConstantes.pathImgRoupas),
              ),
              SizedBox(
                height: alturaTela * .02,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Roupas: Pessoas que',
                    style: styleTextDescription,
                  ),
                  Text(
                    'lavam e passam suas',
                    style: styleTextDescription,
                  ),
                  Text(
                    'roupas',
                    style: styleTextDescription,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
