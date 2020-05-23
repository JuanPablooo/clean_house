import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/constants/tamanhos.dart';
import 'package:flutter/material.dart';

Container addImgButton(imgName)=>
    Container(
        child: SizedBox(
          child: Image.asset("assets/$imgName"),
          height: 32,
          width: 32,
      ),
    );

Container btnGeneric(titulo, cor, funcao, imgName){
  var align = MainAxisAlignment.center;
  var icone = Container();
  if(imgName != null){
    align = MainAxisAlignment.spaceAround;
    icone = addImgButton(imgName);
  }
 return Container(

  height: 50,
  alignment: Alignment.centerLeft,
  decoration: BoxDecoration(
    color: cor,
    borderRadius: BorderRadius.all(Radius.circular(18)),

  ),
  child: FlatButton(onPressed: ()=>{},
      child: Row(
        mainAxisAlignment: align,

        children: <Widget>[
        icone,
          Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          )
        ],
      )),
);
}