import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/widgets/app-bar/app-bares.dart';
import 'package:clean_house/view/widgets/drawer-meu-profissional.dart';
import 'package:flutter/material.dart';

class MeuServico extends StatefulWidget {
  MeuServico({Key key}) : super(key: key);

  @override
  _MeuServicoState createState() => _MeuServicoState();
}

class _MeuServicoState extends State<MeuServico> {
  int _selectedIndex = 0;
  PageController _pageController;
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var appBar = MyAppBar.appBarCliente;
    var size = MediaQuery.of(context).size;
    double larguraTela = size.width;
    double alturaTela = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Container(
      child: Scaffold(
        appBar: appBar,
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
                activeColor: myBlue),
            BottomNavyBarItem(
              icon: Icon(Icons.close),
              title: Text('Cancelados'),
              inactiveColor: Colors.white,
              activeColor: Colors.red,
            ),
          ],
        ),
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
                SizedBox(
                  height: alturaTela * .07,
                ),
                Container(
                  width: larguraTela / 1,
                  height: alturaTela / 9,
                  child: Center(
                    child: Text(
                      'Meu Serviços',
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
                    // child: ,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
