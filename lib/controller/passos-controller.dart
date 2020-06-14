import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'passos-controller.g.dart';


class PassosController = _PassosControllerBase with _$PassosController;

abstract class _PassosControllerBase with Store{
  _PassosControllerBase({ @required this.subPassoAtual, @required this.passoAtual});

  @observable
  var subPassoAtual;
  @action
  void trocaSubPasso(passoDesejado) {
    subPassoAtual = passoDesejado;
  }

  @observable
  var passoAtual;
  @action
  void trocaPasso(passoDesejado){
    passoAtual = passoDesejado;
  }

  @observable
  var caminhoImg;

  @action
  void trocacaminhoImg( caminhoImgDesejado ) => caminhoImg = caminhoImgDesejado;






}