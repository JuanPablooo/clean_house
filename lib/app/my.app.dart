import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/view/cadastro/clientes/passo-1-cliente.dart';
import 'package:clean_house/view/cadastro/passosGenericos/passo1.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/subpasso11.dart';
import 'package:flutter/material.dart';

import 'package:clean_house/view/login.page.dart';
import 'package:provider/provider.dart';


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final usuarioController = UsuarioController();
    final subPassos = PassosController(passoAtual: Passo1Cliente, subPassoAtual: SubPasso1());
    return MultiProvider(
      providers: [
        Provider<UsuarioController>(
          create: (_)=>usuarioController,
        ),
        Provider<PassosController>(
          create: (_)=>subPassos,
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