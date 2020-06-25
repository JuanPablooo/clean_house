import 'package:flutter/material.dart';

import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';

class BtnGenericoWidget extends StatefulWidget {
  @override
  _BtnGenericoWidgetState createState() => _BtnGenericoWidgetState();
  var onPress; 
  String titulo;
  double fontSize;
  Color color;
  BtnGenericoWidget({this.onPress, this.titulo="CONTINUAR",
   @required this.fontSize, this.color = myDarkBlue });
}

class _BtnGenericoWidgetState extends State<BtnGenericoWidget> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed:()=>{widget.onPress()},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(widget.fontSize)
      ),
      hoverElevation: 5,
      child: Text(
        widget.titulo,
        style: TextStyle(
          color: Colors.white,
          fontSize: widget.fontSize
        ),
      ),
      color: widget.color,
    );
  }
}
