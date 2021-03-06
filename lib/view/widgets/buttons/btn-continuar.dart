import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/subpasso12.dart';
import 'package:flutter/material.dart';


class BtnContinuar extends StatefulWidget {
  @override
  _BtnContinuarState createState() => _BtnContinuarState();
  var onPress;
  SubPassAbstract proximoPasso;
  String titulo;

  BtnContinuar({this.onPress, this.proximoPasso, this.titulo="CONTINUAR"});

}

class _BtnContinuarState extends State<BtnContinuar> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        if(widget.proximoPasso != null){
          widget.onPress(widget.proximoPasso);
        }else{
          widget.onPress();
        }

        print("executou onpre");
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      hoverElevation: 5,
      child: Text(
        widget.titulo,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),
      ),
      color: myDarkBlue,
    );
  }
}
