import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class InputGeneric extends StatefulWidget {
  @override
  _InputGenericState createState() => _InputGenericState();


  String labelText;
  Function onChange;
  String generoInput ;
  TextInputType tipoTeclado;
  String Function()  errorText;
  Icon icone;
  String hint;

  InputGeneric({
        @required String this.labelText="",
        this.onChange ,this.tipoTeclado,
        String Function() this.errorText,
        String this.hint,
        Icon this.icone
      });
}

class _InputGenericState extends State<InputGeneric> {
  @override
  Widget build(BuildContext context) {

//    return  Observer(builder: (_){
//      return
//    },); TextField(
//      onChanged: widget.onChange,
//      onTap: () {},
//      keyboardType: widget.tipoTeclado ,
//      decoration: InputDecoration(
//        labelStyle: TextStyle(
//          color: Colors.black38,
//          fontWeight: FontWeight.w400,
//          fontSize: 20,
//        ),
//        labelText: "${widget.labelText}",
//        prefixIcon: widget.icone,
//        hintText: widget.hint,
//        errorText: widget.errorText == null ? null : widget.errorText(),
////              widget.errorText == null ? null : widget.errorText(),
//      ),
//    );
    return Container(
      child: Observer(
        builder: (_) {
          return TextField(
            onChanged: widget.onChange,
            onTap: () {},
            keyboardType: widget.tipoTeclado ,
            decoration: InputDecoration(
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
              labelText: "${widget.labelText}",
              prefixIcon: widget.icone,
              hintText: widget.hint,
              errorText: widget.errorText == null ? null : widget.errorText(),
//              widget.errorText == null ? null : widget.errorText(),
            ),
          );
        },
      ),
    );
  }
}