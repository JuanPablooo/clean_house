import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/models/api/endereco.dart';
import 'package:clean_house/models/api/residencia.dart';
import 'package:clean_house/models/api/solicitacao-servico.dart';
import 'package:clean_house/services/servico-service.dart';
import 'package:clean_house/view/widgets/btn-generic.dart';
import 'package:flutter/material.dart';
import 'package:fluttie/fluttie.dart';
import 'package:http/http.dart';

class CardServicoSolicitado extends StatefulWidget {
  final double widthCard;
  final double heightCard;
  bool avaliar;
  final SolicitacaoDeServico solicitacaoDeServico;

  CardServicoSolicitado(
      {Key key,
      @required this.widthCard,
      @required this.solicitacaoDeServico,
      this.avaliar = false,
      @required this.heightCard})
      : super(key: key);

  @override
  _CardServicoSolicitadoState createState() => _CardServicoSolicitadoState();
}

class _CardServicoSolicitadoState extends State<CardServicoSolicitado> {
  var servicoService = ServicoService();
  var enviando = false;
  var carregado = false;

  Endereco endereco;

  FluttieAnimationController animatioCtrl;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    prepareAnimation();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animatioCtrl?.dispose();
  }

  prepareAnimation() async {
    var instance = Fluttie();
    var checkAnimation =
        await instance.loadAnimationFromAsset("assets/animacoes/aprovou.json");

    animatioCtrl = await instance.prepareAnimation(checkAnimation,
        duration: const Duration(seconds: 2),
        repeatCount: const RepeatCount.dontRepeat(),
        repeatMode: RepeatMode.START_OVER);
  }

  void reprove() async {}

  @override
  Widget build(BuildContext context) {
    var btndetalhes = BtnGenericoWidget(
      fontSize: widget.heightCard * .03,
      titulo: "Detalhes",
      color: myGreen, //Colors.green,
    );
    var aprovar = BtnGenericoWidget(
      fontSize: widget.heightCard * .03,
      titulo: "Aprovar",
      color: myGreen, //
      onPress: aprove,
    );
    var rejeitar = BtnGenericoWidget(
      fontSize: widget.heightCard * .03,
      titulo: "Rejeitar",
      color: Colors.redAccent, //Colors.green,
    );
    var btnspendente = Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        rejeitar,
        aprovar,
      ],
    );
    endereco = widget.solicitacaoDeServico.residencia.endereco;
    var styleText =
        TextStyle(fontSize: widget.heightCard * .029, color: Colors.black);
    return Container(
      child: Container(
        width: widget.widthCard,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.heightCard * .05),
          ),
          child: Container(
            height: widget.heightCard * .6,
            width: widget.widthCard * .5,
            child: Column(
              children: <Widget>[
                SizedBox(height: widget.heightCard * .05),
                Text(
                  'você tem uma solicitação de ',
                  style: styleText,
                ),
                Text(
                  'de ' + 'nome',
                  style: styleText,
                ),
                SizedBox(height: widget.heightCard * .05),
                SizedBox(
                  height: widget.heightCard * .167,
                  child: Image.asset('assets/cliente.png'),
                ),
                FluttieAnimation(animatioCtrl),
                SizedBox(height: widget.heightCard * .05),
                Text(
                    endereco.rua +
                        ", " +
                        endereco.numero +
                        " - " +
                        endereco.bairro +
                        ",",
                    style: styleText),
                Text(endereco.cidade + ", " + endereco.cep, style: styleText),
                SizedBox(height: widget.heightCard * .05),
                Container(
                  height: widget.heightCard * .074,
                  width: widget.widthCard * .6,
                  child: widget.avaliar ? btnspendente : btndetalhes,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<Function> aprove() async {
    setState(() {
      enviando = true;
    });
    Future.delayed(
        const Duration(seconds: 4),
        () => setState(() {
              carregado = true;
              animatioCtrl.start();
            }));
    // var status = "{'status':'confirmado'}";
    // int id = solicitacaoDeServico.id;
    // Response respo = await servicoService.atualizaStatus(id, status);
    // if (respo.statusCode == 200) {
    // }
  }
}
