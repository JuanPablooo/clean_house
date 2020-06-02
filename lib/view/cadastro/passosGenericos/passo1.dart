
import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/widgets/circulo-subpasso.dart';
import 'package:clean_house/view/widgets/input-widget-generic.dart';
import 'package:flutter/material.dart';

class Passo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
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
            SizedBox(height: 20,),
            InputGeneric(labelText: "Nome",),
            SizedBox(height: 15,),
            InputGeneric(labelText: "CPF",),

            SizedBox(height: 15,),
            InputGeneric(labelText: "Data Nascimento",),
            SizedBox(height: 40,),
            Container(
              height: 30,
              width: 50,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CirculoSubPasso(corCirculo: myDarkBlue,),
                  CirculoSubPasso(),
                  CirculoSubPasso(),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
