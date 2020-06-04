// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passos-controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PassosController on _PassosControllerBase, Store {
  final _$subPassoAtualAtom = Atom(name: '_PassosControllerBase.subPassoAtual');

  @override
  dynamic get subPassoAtual {
    _$subPassoAtualAtom.reportRead();
    return super.subPassoAtual;
  }

  @override
  set subPassoAtual(dynamic value) {
    _$subPassoAtualAtom.reportWrite(value, super.subPassoAtual, () {
      super.subPassoAtual = value;
    });
  }

  final _$passoAtualAtom = Atom(name: '_PassosControllerBase.passoAtual');

  @override
  dynamic get passoAtual {
    _$passoAtualAtom.reportRead();
    return super.passoAtual;
  }

  @override
  set passoAtual(dynamic value) {
    _$passoAtualAtom.reportWrite(value, super.passoAtual, () {
      super.passoAtual = value;
    });
  }

  final _$caminhoImgAtom = Atom(name: '_PassosControllerBase.caminhoImg');

  @override
  dynamic get caminhoImg {
    _$caminhoImgAtom.reportRead();
    return super.caminhoImg;
  }

  @override
  set caminhoImg(dynamic value) {
    _$caminhoImgAtom.reportWrite(value, super.caminhoImg, () {
      super.caminhoImg = value;
    });
  }

  final _$_PassosControllerBaseActionController =
      ActionController(name: '_PassosControllerBase');

  @override
  void trocaSubPasso(dynamic passoDesejado) {
    final _$actionInfo = _$_PassosControllerBaseActionController.startAction(
        name: '_PassosControllerBase.trocaSubPasso');
    try {
      return super.trocaSubPasso(passoDesejado);
    } finally {
      _$_PassosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocaPasso(dynamic passoDesejado) {
    final _$actionInfo = _$_PassosControllerBaseActionController.startAction(
        name: '_PassosControllerBase.trocaPasso');
    try {
      return super.trocaPasso(passoDesejado);
    } finally {
      _$_PassosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocacaminhoImg(dynamic caminhoImgDesejado) {
    final _$actionInfo = _$_PassosControllerBaseActionController.startAction(
        name: '_PassosControllerBase.trocacaminhoImg');
    try {
      return super.trocacaminhoImg(caminhoImgDesejado);
    } finally {
      _$_PassosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
subPassoAtual: ${subPassoAtual},
passoAtual: ${passoAtual},
caminhoImg: ${caminhoImg}
    ''';
  }
}
