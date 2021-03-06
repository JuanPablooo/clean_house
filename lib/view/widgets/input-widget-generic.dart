import 'package:clean_house/constants/cores.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class InputGeneric extends StatefulWidget {
  @override
  _InputGenericState createState() => _InputGenericState();

  String labelText;
  Function onChange;
  String generoInput;
  TextInputType tipoTeclado;
  String Function() errorText;
  Icon icone;
  String hint;
  bool senha;
  var controller;
  Function onTap;

  InputGeneric(
      {@required this.labelText,
      this.onChange,
      this.tipoTeclado,
      String Function() this.errorText,
      String this.hint,
      bool this.senha = false,
      this.controller,
      this.onTap,
      Icon this.icone});
}

class _InputGenericState extends State<InputGeneric> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Observer(
        builder: (_) {
          return TextField(
            controller: widget.controller,
            onChanged: widget.onChange,
            onTap: widget.onTap,
            obscureText: widget.senha, //== null ? false : true,
            keyboardType: widget.tipoTeclado,
            decoration: InputDecoration(
              labelStyle: TextStyle(
                color: myDarkBlue,
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
