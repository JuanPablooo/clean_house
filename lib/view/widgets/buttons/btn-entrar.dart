import 'package:clean_house/constants/cores.dart';
import 'package:flutter/material.dart';
Container btnEntrar()=>Container(
  height: 50,
  alignment: Alignment.centerLeft,
  decoration: BoxDecoration(
      color: myDarkBlue,
      borderRadius: BorderRadius.all(Radius.circular(15))
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
);