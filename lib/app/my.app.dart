import 'package:clean_house/view/home/home-page-cliente.dart';
import 'package:clean_house/view/home/home-page-profissional.dart';
import 'package:clean_house/view/meu-servico/meu-servico.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/view/cadastro/passosGenericos/passo1.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/subpasso11.dart';
import 'package:clean_house/view/login.page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final usuarioController = UsuarioController();
    final passos =
        PassosController(passoAtual: Passo1(), subPassoAtual: SubPasso1());
    return MultiProvider(
      providers: [
        Provider<UsuarioController>(
          create: (_) => usuarioController,
        ),
        Provider<PassosController>(
          create: (_) => passos,
        ),
      ],
      child: MaterialApp(
        title: 'Clean House',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
        // home: HomePageCliente(),
        // home: HomePageProfissional(),
        // home: MeuServico()
      ),
    );
  }
}
