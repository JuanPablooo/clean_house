import 'dart:convert';

import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/models/api/cliente.dart';
import 'package:clean_house/models/api/endereco.dart';
import 'package:clean_house/models/api/profissional.dart';
import 'package:clean_house/models/api/residencia.dart';
import 'package:clean_house/models/api/solicitacao-servico.dart';
import 'package:clean_house/services/servico-service.dart';
import 'package:clean_house/view/widgets/btn-generic.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class CardServicoSolicitado extends StatefulWidget {
  final double widthCard;
  final double heightCard;
  final atualiza;
  final Profissional profissional;
  final Cliente cliente;
  bool avaliar;
  final SolicitacaoDeServico solicitacaoDeServico;

  CardServicoSolicitado(
      {Key key,
      @required this.widthCard,
      @required this.solicitacaoDeServico,
      this.avaliar = false,
      this.atualiza,
      this.profissional,
      this.cliente,
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void aprove() async {
    var status = json.encode({'status': 'confirmado'});
    int id = widget.solicitacaoDeServico.id;
    Response respo = await servicoService.atualizaStatus(id, status);
    if (respo.statusCode == 200) {
      widget.solicitacaoDeServico.status = "confirmado";
      widget.atualiza(widget.profissional);
      // widget.solicitacaoDeServico
      print("deu");
    } else {
      print("nao deu ");
    }
  }

  void reprove() async {
    var status = json.encode({'status': 'cancelado'});
    int id = widget.solicitacaoDeServico.id;
    Response respo = await servicoService.atualizaStatus(id, status);
    if (respo.statusCode == 200) {
      widget.solicitacaoDeServico.status = "cancelado";
      widget.atualiza(widget.profissional);
      // widget.solicitacaoDeServico
      print("deu");
    } else {
      print("nao deu ");
    }
  }

  @override
  Widget build(BuildContext context) {
    var url;
    var imagen = Image.asset('assets/cliente.png');
    url = widget.cliente.usuario.urlPerfil;
    if (url != null) {
      imagen = Image.network(url);
    }
    // var url = widget.profissional.usuario.
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
      color: Colors.redAccent, //
      onPress: reprove,
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
                  widget.cliente.nomeCompleto,
                  style: styleText,
                ),
                SizedBox(height: widget.heightCard * .05),
                SizedBox(
                  height: widget.heightCard * .167,
                  child: imagen,
                ),
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
}
