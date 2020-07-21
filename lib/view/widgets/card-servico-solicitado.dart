import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/models/api/endereco.dart';
import 'package:clean_house/models/api/residencia.dart';
import 'package:clean_house/models/api/solicitacao-servico.dart';
import 'package:clean_house/view/widgets/btn-generic.dart';
import 'package:flutter/material.dart';

class CardServicoSolicitado extends StatelessWidget {
  final double widthCard;
  final double heightCard;
  final SolicitacaoDeServico solicitacaoDeServico;
  Endereco endereco;

  CardServicoSolicitado(
      {Key key,
      @required this.widthCard,
      @required this.solicitacaoDeServico,
      @required this.heightCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    endereco = solicitacaoDeServico.residencia.endereco;
    var styleText = TextStyle(fontSize: heightCard * .029, color: Colors.black);
    return Container(
      child: Container(
        width: widthCard,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(heightCard * .05),
          ),
          child: Container(
            height: heightCard * .6,
            width: widthCard * .5,
            child: Column(
              children: <Widget>[
                SizedBox(height: heightCard * .05),
                Text(
                  'você tem uma solicitação de ',
                  style: styleText,
                ),
                Text(
                  'de ' + 'nome',
                  style: styleText,
                ),
                SizedBox(height: heightCard * .05),
                SizedBox(
                  height: heightCard * .167,
                  child: Image.asset('assets/cliente.png'),
                ),
                SizedBox(height: heightCard * .05),
                Text(
                    endereco.rua +
                        ", " +
                        endereco.numero +
                        " - " +
                        endereco.bairro +
                        ",",
                    style: styleText),
                Text(endereco.cidade + ", " + endereco.cep, style: styleText),
                SizedBox(height: heightCard * .05),
                Container(
                  height: heightCard * .068,
                  width: widthCard * .6,
                  child: BtnGenericoWidget(
                    fontSize: heightCard * .03,
                    titulo: "Detalhes",
                    color: myGreen, //Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
