import 'package:flutter/material.dart';

class Background{
  static BoxDecoration desenha(nome){
    return BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/$nome"),
          fit: BoxFit.fill
      ),
    );
  }

}