

import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/widgets/background.dart';
import 'package:clean_house/view/widgets/buttons/btn-generic.dart';
import 'package:clean_house/view/widgets/buttons/input-email.dart';
import 'package:clean_house/view/widgets/buttons/input-senha.dart';
import 'package:clean_house/view/widgets/input-widget-generic.dart';
import 'package:flutter/material.dart';
class Passo1Cliente extends StatefulWidget {
  @override
  _Passo1Cliente createState() {
    return _Passo1Cliente();
  }
}
teste(value){
  (x)=>{
    if(x!="f"){
      print("oooo")
    },
  print(x)
  };

}
class _Passo1Cliente extends State<Passo1Cliente> {

  @override
  Widget build(BuildContext context) {
    print(inputEmail());
    return Scaffold(
      resizeToAvoidBottomInset : false,

      body: Container(
//        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        decoration: Background.desenha("background-cinza2.png"),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 80,
              child: Container(
                padding:  EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/icon-voltar.png"),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: Container(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/passo1c.png"),
                ),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            SizedBox(
              height: 335,
              child: Container(

                margin: EdgeInsets.only(left: 25, right: 25),
                padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5,5),
                      blurRadius: 10.0,
                      spreadRadius: .8,
                      color: Colors.grey
                    )
                  ]
                ),
                child: ListView(
                  children: <Widget>[
                    TextFormField(
                      //autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "E-mail *",
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          )
                      ),
                      style: TextStyle(
                        fontSize: 20 ,
                      ),
                    ),
                    inputSenha(),
                    InputeGeneric()

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.all(35),
              child: btnGeneric("CONTINUAR", myDarkBlue, null, null, 50.3),
            )

            //InputeGeneric(validacao: teste("este é p valor"),)

          ],
        ),
        
      )
    );
  }
}


