import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/view/cadastro/clientes/passo-3-cliente.dart';
import 'package:clean_house/view/cadastro/profissionais/passo-3-profissional.dart';
import 'package:clean_house/view/cadastro/profissionais/passo-1-profissional.dart';
import 'package:clean_house/view/login.page.dart';
import 'package:clean_house/view/widgets/background.dart';
import 'package:clean_house/view/widgets/buttons/btn-generic.dart';
import 'package:clean_house/view/cadastro/clientes/passo-1-cliente.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class EscolhaPerfil extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final PassosController passosController = Provider.of<PassosController>(context);
    var  entrarPage = () {
      Navigator.push(
          context,
          MaterialPageRoute(
          builder: (BuildContext context)=> LoginPage()));
    };
    var  cadastroCliente = () {
      passosController.trocaPasso3(Passo3Cliente());
      Navigator.push(
          context,
          MaterialPageRoute(
          builder: (BuildContext context)=> Passo1Cliente()));
    };
    var  cadastroProfissional = () {
      passosController.trocaPasso3(Passo3Profissional());
      Navigator.push(
          context,
          MaterialPageRoute(
          builder: (BuildContext context)=> PrimeirosPassosProfissional()));
    };
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(25,184,212,1),
        title: Text("Priorizando a sua experiência!",
          style: TextStyle() ,
        ),
      ),
      resizeToAvoidBottomInset : false,
      body: Container(
        decoration: Background.desenha("background.png"),
        padding: EdgeInsets.only(top: 20, left: 25, right: 25 ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 85,
            ),
            Column(

              children: <Widget>[
                Text(
                  "Cadastre-se como:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: SizedBox(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    SizedBox(
                      height: 110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/funcionaria.png"),
                          ),
                          btnGeneric("PROFISSIONAL", myDarkBlue, cadastroProfissional, null, 200.0)
                        ],
                      )
                    ),
                    SizedBox(
                        height: 110,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset("assets/cliente.png"),
                            ),
                            btnGeneric("CLIENTE", myDarkBlue, cadastroCliente, null, 200.0)
                          ],
                        )
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "já está cadastrado ?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                btnGeneric("ENTRE", myDarkBlue, entrarPage, null, 330.0)
              ],
            )

          ]
        ),
      ) ,
    );
  }
}