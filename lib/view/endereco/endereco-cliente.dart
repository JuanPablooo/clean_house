import 'package:clean_house/constants/constantes-general.dart';
import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/widgets/app-bar/app-bares.dart';
import 'package:clean_house/view/widgets/btn-generic.dart';
import 'package:clean_house/view/widgets/drawer-menu-cliente.dart';
import 'package:clean_house/view/widgets/mostra-campo-endereco.dart';
import 'package:flutter/material.dart';

class EnderecoCliente extends StatefulWidget {
  EnderecoCliente({Key key}) : super(key: key);

  @override
  _EnderecoClienteState createState() => _EnderecoClienteState();
}

class _EnderecoClienteState extends State<EnderecoCliente> {
  @override
  Widget build(BuildContext context) {
    var appBar = MyAppBar.appBarCliente;
    var size = MediaQuery.of(context).size;
    double larguraTela = size.width;
    double alturaTela = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;

    var styleTextDescription = TextStyle(
        color: Colors.white,
        fontSize: alturaTela * .03,
        fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: myDarkBlue,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              icon: new Icon(
                Icons.edit_location,
                color: Colors.white,
              ),
              title: new Text('Etapa 1'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.edit_location,
                color: Colors.white,
              ),
              title: new Text('Etapa 2'),
            ),
          ]),
      drawer: MyDrawerMenuCliente(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.amber,
          child: Stack(
            children: <Widget>[
              Container(
                height: alturaTela,
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
                    height: alturaTela * .057,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: larguraTela / 1,
                    height: alturaTela / 9,
                    child: Center(
                      child: Text(
                        'Informações de endereço',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: alturaTela * .05,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: alturaTela * .5,
                    width: larguraTela * .75,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: alturaTela * .03,
                        ),
                        SizedBox(
                          height: alturaTela * .03,
                        ),

                        CampoInfoTitleValue(
                          name: 'Rua:',
                          value: 'Regina Lucia',
                          height: alturaTela * .07,
                          width: larguraTela * .58,
                        ),
                        SizedBox(
                          height: alturaTela * .03,
                        ),
                        CampoInfoTitleValue(
                          name: 'Bairro:',
                          value: 'KM 18',
                          height: alturaTela * .07,
                          width: larguraTela * .58,
                        ),
                        SizedBox(
                          height: alturaTela * .03,
                        ),
                        CampoInfoTitleValue(
                          name: 'Cidade:',
                          value: 'Osasco',
                          height: alturaTela * .07,
                          width: larguraTela * .58,
                        ),
                        // SizedBox(
                        //   width: larguraTela * .58,
                        //   height: alturaTela * .07,
                        //   child: TextField(
                        //     decoration: InputDecoration(labelText: 'endereçoo'),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: alturaTela * .02,
                  ),
                  SizedBox(
                    width: larguraTela * .7,
                    height: alturaTela * .08,
                    child: BtnGenericoWidget(
                      titulo: "Adicionar",
                      fontSize: 19.0,
                      onPress: () => {},
                    ),
                  ),
                  SizedBox(
                    height: alturaTela * .02,
                  ),
                  SizedBox(
                    width: larguraTela * .7,
                    height: alturaTela * .08,
                    child: BtnGenericoWidget(
                      titulo: "Editar",
                      fontSize: 19.0,
                      color: Colors.green,
                      onPress: () => {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
