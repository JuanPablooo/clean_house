import 'package:clean_house/controller/usuario-controller.dart';
import 'package:flutter/material.dart';

import 'package:clean_house/view/login.page.dart';
import 'package:provider/provider.dart';


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final usuarioController = UsuarioController();
    return MultiProvider(
      providers: [
        Provider<UsuarioController>(
          create: (_)=>usuarioController,
        ),
      ],
      child: MaterialApp(
        title: 'Clean House',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: EscolhaPerfil(),
        home: LoginPage(),
      ),
    );



  }
}