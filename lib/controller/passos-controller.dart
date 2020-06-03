
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/subpasso11.dart';
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





}