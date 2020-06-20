import 'package:clean_house/constants/cores.dart';
import 'package:flutter/material.dart';

class CirculoSubPasso extends StatelessWidget {
  Color corCirculo;

  CirculoSubPasso({Color this.corCirculo = myDarkBlue});

  @override
  Widget build(BuildContext context) {
    return Container(width: 18, height: 18,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          color: corCirculo,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                offset: Offset(0.5,0.5),
                blurRadius: 2.0,
                spreadRadius: .8,
                color: Colors.grey
            )
          ]
      ),

    );
  }
}
