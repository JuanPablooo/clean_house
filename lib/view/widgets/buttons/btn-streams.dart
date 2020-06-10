import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/subpasso12.dart';
import 'package:flutter/material.dart';


class BtnStream extends StatefulWidget {
  @override
  _BtnStreamState createState() => _BtnStreamState();
  var onPress;
  SubPassAbstract proximoPasso;
  String titulo;

  BtnStream({this.onPress, this.proximoPasso, this.titulo});

}

class _BtnStreamState extends State<BtnStream> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        widget.onPress();
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
