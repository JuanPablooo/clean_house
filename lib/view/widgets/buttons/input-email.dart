import 'package:clean_house/constants/cores.dart';
import 'package:flutter/material.dart';

changeColorUnderlineInputBorder(color) => UnderlineInputBorder(
      borderSide: BorderSide(
        color: color,
      ),
    );
TextFormField inputEmail(setEmail) => TextFormField(
      keyboardType: TextInputType.emailAddress,
      onChanged: setEmail,
      decoration: InputDecoration(
        labelText: "E-mail",
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
