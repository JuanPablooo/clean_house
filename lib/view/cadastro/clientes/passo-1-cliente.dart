import 'package:clean_house/view/widgets/background.dart';
import 'package:flutter/material.dart';

class Passo1Cliente extends StatefulWidget {
  @override
  _Passo1Cliente createState() {
    return _Passo1Cliente();
  }
}

class _Passo1Cliente extends State<Passo1Cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Color.fromRGBO(25,184,212,1),
//       elevation: 0.0,
//        title: Text("Priorizando a sua experiência!",
//          style: TextStyle() ,
//        ),
//      ),
      resizeToAvoidBottomInset : false,
      body: Container(
        decoration: Background.desenha("background-cinza2.png"),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 120,
              child: Container(
//                decoration: Background.desenha("retangulo-superior.png"),
              ),
            )
          ],
        ),
        
      )
    );
  }
}


