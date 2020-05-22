import 'package:flutter/material.dart';

class Email extends StatelessWidget{
  int height;
  int largura;
  Color corFundo;

  @override
  Widget build(BuildContext context){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "E-mail",
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

    );
  }

}