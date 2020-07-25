import 'package:clean_house/models/api/solicitacao-servico.dart';
import 'package:clean_house/view/widgets/card-servico-solicitado.dart';
import 'package:flutter/material.dart';

class ListagemServicos extends StatelessWidget {
  final double larguraTela;
  final double alturaTela;
  final String titulo;
  bool avaliar;
  final List<SolicitacaoDeServico> servicos;
  ListagemServicos(
      {Key key,
      @required this.alturaTela,
      @required this.larguraTela,
      @required this.titulo,
      this.avaliar = false,
      @required this.servicos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 10,
            width: larguraTela * .8,
            child: ListView.builder(
              itemCount: servicos != null ? servicos.length : 0,
              // physics: AlwaysScrollableScrollPhysics(parent: ),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                // Servico servico = homeController.servicos[index];
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
                        solicitacaoDeServico: servicos[index],
                      ),
                    ],
                  );
                }
                return CardServicoSolicitado(
                  avaliar: avaliar,
                  widthCard: larguraTela,
                  heightCard: alturaTela,
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
