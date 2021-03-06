import 'package:clean_house/constants/cores.dart';
import 'package:flutter/material.dart';

changeColorUnderlineInputBorder(color) => UnderlineInputBorder(
      borderSide: BorderSide(
        color: color,
      ),
    );
TextFormField inputSenha(setSenha) => TextFormField(
      keyboardType: TextInputType.visiblePassword,
      onChanged: setSenha,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Senha",
        enabledBorder: changeColorUnderlineInputBorder(Colors.white),
        focusedBorder: changeColorUnderlineInputBorder(myDarkBlue),
        labelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      style: TextStyle(
        color: myDarkBlue,
        fontSize: 20,
      ),
    );
