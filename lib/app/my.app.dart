import 'package:clean_house/view/escolha-perfil.page.dart';
import 'package:clean_house/view/login.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean House',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: EscolhaPerfil(),
      home: LoginPage(),
    );
  }
}