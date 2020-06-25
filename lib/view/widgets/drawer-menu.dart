import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/widgets/btn-generic.dart';
import 'package:flutter/material.dart';

class MyDrawerMenu extends StatelessWidget {
  const MyDrawerMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tamanhos = MediaQuery.of(context).size;
    double marginTop = MediaQuery.of(context).padding.top;
    double altura = tamanhos.height - - MediaQuery.of(context).padding.top;
    
    double largura = tamanhos.width;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: altura * .38,
            child: DrawerHeader(
              child: SizedBox(
                child: Column(children: <Widget>[
                  SizedBox(height: altura * .048,),

                  SizedBox(height: altura * .167,
                  child: Image.asset('assets/cliente.png'),),

                  SizedBox(height: altura * .02 ,),

                  SizedBox(
                    height: altura * .06, width: largura * .5,
                    child: BtnGenericoWidget(titulo: 'VER', fontSize: altura * .03,
                    color: Color(0xFF1B9C94),) ,)
                  
                ],
                ),
              ),
              decoration: BoxDecoration(
                color: myBlue,
              
              ),
            ) ,
          ),

          ListTile(
            title: Text('Meu perfil'), onTap: () {},
            leading: Icon(Icons.account_circle, size: 35, color: myBlue),
          ),
          
          ListTile(
            title: Text('Meu endereço'), onTap: () {},
            leading: Icon(Icons.location_on, size: 35, color: myBlue),
          ),
            Divider(),
          ListTile(
            title: Text('Pagamento'), onTap: () {},
            leading: Icon(Icons.credit_card, size: 35, color: myBlue),
          ),

          ListTile(
            title: Text('Minhas Residências'), onTap: () {},
            leading: Icon(Icons.home, size: 35, color: myBlue),
          ),

          ListTile(
            title: Text('Novo serviço'), onTap: () {},
            leading: Icon(Icons.add_circle , size: 35, color: myBlue),
          ),

          Divider(),
          ListTile(
            title: Text('Meu histórico'), onTap: () {},
            leading: Icon(Icons.history, size: 35, color: myBlue),
          ),
          ListTile(
            title: Text('Chat'), onTap: () {},
            leading: Icon(Icons.chat, size: 35, color: myBlue),
          ),
          SizedBox(height: altura * .02 ,),
          Container(
            height: altura * .06, width: largura * .1,
            color: Colors.red,
            // child: BtnGenericoWidget(titulo: 'Sair', fontSize: altura * .03,
            //   color: Color(0xFF1B9C94),
            //   ) ,
          ),
          // Drawer
          SizedBox(height: altura * .02)
        ],
      ),
    );
  }
}