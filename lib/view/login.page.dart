import 'package:flutter/material.dart';

import 'package:clean_house/view/widgets/email.widget.dart';
import 'package:clean_house/view/widgets/background.dart';

import 'escolha-perfil.page.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: Background.desenha("background.png"),
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
          child: ListView(
            children: <Widget>[

              SizedBox(
                height: 120,
              ),
              Email(),
              SizedBox(
                height: 13,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),

                ),
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(22,119,199, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: FlatButton(onPressed: ()=>{},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Entrar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: FlatButton(onPressed: ()=>{},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: SizedBox(
                            child: Image.asset("assets/marcas-e-logotipos.png"),
                            height: 28,
                            width: 28,
                          ),
                        ),
                        Text(
                          "Entrar Com Google",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(22,119,199, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: FlatButton(onPressed: ()=>{},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: SizedBox(
                            child: Image.asset("assets/fb-icon.png"),
                            height: 28,
                            width: 28,
                          ),
                        ),
                        Text(
                          "Entrar Com Facebook",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                alignment: Alignment.center,
                child: FlatButton(onPressed: ()=>{},
                    child: Text(
                      "Recuperar Senha",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                alignment: Alignment.center,
                child: FlatButton(
                  //usario clicou então tenho que enviar ele para a pagina onde se inicia o cadastro
                    onPressed: (){
                      Navigator.push(
                        context,
                          MaterialPageRoute(
                              builder: (BuildContext context)=> EscolhaPerfil())
                      );
                    },
                    child: Text(
                      "Cadastre-se",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(142,90,52,1.0),
                        fontSize: 19
                      ),
                    )),
              ),
            ],
          ),
      ),
    );
  }
}