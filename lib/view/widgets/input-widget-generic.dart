import 'package:flutter/material.dart';

class InputeGeneric extends StatelessWidget{

  Function validacao;
  String keyInput;
//  InputeGeneric();
  InputeGeneric({Function validacao}){
    this.validacao = validacao;
  }

  @override
  Widget build(BuildContext context){
    return TextFormField(
      //autofocus: true,

      keyboardType: TextInputType.emailAddress,
      validator: validacao,
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
    );
  }


}