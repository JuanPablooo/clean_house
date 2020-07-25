import 'dart:math';

import 'package:clean_house/models/api/cliente.dart';
import 'package:clean_house/models/api/solicitacao-servico.dart';
import 'package:clean_house/view/widgets/card-servico-solicitado.dart';
import 'package:flutter/material.dart';

class ListagemServicos extends StatelessWidget {
  final double larguraTela;
  final double alturaTela;
  final String titulo;
  final atualizaState;
  final profissional;
  final List<Cliente> clientes;
  bool avaliar;
  final List<SolicitacaoDeServico> servicos;
  ListagemServicos(
      {Key key,
      @required this.alturaTela,
      @required this.larguraTela,
      @required this.titulo,
      this.atualizaState,
      this.profissional,
      this.clientes,
      this.avaliar = false,
      @required this.servicos})
      : super(key: key);

  bool ehVazio(v) {
    if (v == null) {
      return true;
    } else if (v.length < 1) return true;
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 10,
            width: larguraTela * .8,
            child: ehVazio(servicos)
                ? Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SizedBox(
                        height: alturaTela * .07,
                      ),
                      Container(
                        width: larguraTela / 1,
                        height: alturaTela / 9,
                        child: Center(
                          child: Text(
                            titulo,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: alturaTela * .05,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                : ListView.builder(
                    itemCount: servicos != null ? servicos.length : 0,
                    // physics: AlwaysScrollableScrollPhysics(parent: ),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      Cliente cliente = clientes
                          .where((element) =>
                              element.id == servicos[index].idCliente)
                          .toList()[0];

                      if (index == 0) {
                        // return the header
                        return new Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            SizedBox(
                              height: alturaTela * .07,
                            ),
                            Container(
                              width: larguraTela / 1,
                              height: alturaTela / 9,
                              child: Center(
                                child: Text(
                                  titulo,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: alturaTela * .05,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            CardServicoSolicitado(
                              avaliar: avaliar,
                              widthCard: larguraTela,
                              heightCard: alturaTela,
                              atualiza: atualizaState,
                              profissional: profissional,
                              cliente: cliente,
                              solicitacaoDeServico: servicos[index],
                            ),
                          ],
                        );
                      }
                      return CardServicoSolicitado(
                        avaliar: avaliar,
                        widthCard: larguraTela,
                        heightCard: alturaTela,
                        atualiza: atualizaState,
                        profissional: profissional,
                        cliente: cliente,
                        solicitacaoDeServico: servicos[index],
                      );
                    },
                  ),
          ),
        ),
      ],
    ));
  }
}
