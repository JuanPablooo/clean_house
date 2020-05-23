import 'package:clean_house/constants/cores.dart';
import 'package:flutter/material.dart';

Container entrarFacebook()=>Container(
  height: 50,
  alignment: Alignment.centerLeft,
  decoration: BoxDecoration(
      color: myDarkBlue,
      borderRadius: BorderRadius.all(Radius.circular(18))
  ),
  child: FlatButton(onPressed: ()=>{},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: SizedBox(
              child: Image.asset("assets/fb-icon.png"),
              height: 32,
              width: 32,
            ),
          ),
          Text(
            "Entrar Com o Facebook",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          )
        ],
      )),
);