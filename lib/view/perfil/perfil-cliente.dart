import 'package:clean_house/constants/constantes-general.dart';
import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/perfil/navigationsItensClient/navigation-dados.dart';
import 'package:clean_house/view/widgets/app-bar/app-bares.dart';
import 'package:clean_house/view/widgets/btn-generic.dart';
import 'package:clean_house/view/widgets/drawer-menu-cliente.dart';
import 'package:clean_house/view/widgets/mostra-campo-endereco.dart';
import 'package:flutter/material.dart';

class PerfilCliente extends StatefulWidget {
  PerfilCliente({Key key}) : super(key: key);

  @override
  _PerfilClienteState createState() => _PerfilClienteState();
}

class _PerfilClienteState extends State<PerfilCliente> {
  int selectedIndex = 0;

  changeItem(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var appBar = MyAppBar.appBarCliente;
    var size = MediaQuery.of(context).size;
    double larguraTela = size.width;
    double alturaTela = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;

    List<Widget> _widgetOptions = <Widget>[
      NavigationDadosContent(
        alturaTela: alturaTela,
        larguraTela: larguraTela,
      ),
      Text(
        'Index 1: Business',
      ),
      Text(
        'Index 2: School',
      ),
    ];
    var styleTextDescription = TextStyle(
        color: Colors.white,
        fontSize: alturaTela * .03,
        fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: myDarkBlue,
        selectedItemColor: myBlue,
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: changeItem,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.amber,
            icon: new Icon(
              Icons.person,
              // color: Colors.white,
            ),
            title: new Text('Dados'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.phone,
              // color: Colors.white,
            ),
            title: new Text('Contato'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.enhanced_encryption,
              // color: Colors.white,
            ),
            title: new Text('Login'),
          ),
        ],
      ),
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
              // NavigationDadosContent(
              //   alturaTela: alturaTela,
              //   larguraTela: larguraTela,
              // )
              _widgetOptions[selectedIndex]
            ],
          ),
        ),
      ),
    );
  }
}
