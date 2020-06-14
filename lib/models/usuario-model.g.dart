// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario-model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Usuario on _Usuario, Store {
  final _$nomeAtom = Atom(name: '_Usuario.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$emailAtom = Atom(name: '_Usuario.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$cpfAtom = Atom(name: '_Usuario.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$senhaAtom = Atom(name: '_Usuario.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$dataNascimentoAtom = Atom(name: '_Usuario.dataNascimento');

  @override
  String get dataNascimento {
    _$dataNascimentoAtom.reportRead();
    return super.dataNascimento;
  }

  @override
  set dataNascimento(String value) {
    _$dataNascimentoAtom.reportWrite(value, super.dataNascimento, () {
      super.dataNascimento = value;
    });
  }

  final _$celularAtom = Atom(name: '_Usuario.celular');

  @override
  String get celular {
    _$celularAtom.reportRead();
    return super.celular;
  }

  @override
  set celular(String value) {
    _$celularAtom.reportWrite(value, super.celular, () {
      super.celular = value;
    });
  }

  final _$_UsuarioActionController = ActionController(name: '_Usuario');

  @override
  dynamic changeNome(String value) {
    final _$actionInfo =
        _$_UsuarioActionController.startAction(name: '_Usuario.changeNome');
    try {
      return super.changeNome(value);
    } finally {
      _$_UsuarioActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String value) {
    final _$actionInfo =
        _$_UsuarioActionController.startAction(name: '_Usuario.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_UsuarioActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCpf(String value) {
    final _$actionInfo =
        _$_UsuarioActionController.startAction(name: '_Usuario.changeCpf');
    try {
      return super.changeCpf(value);
    } finally {
      _$_UsuarioActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeSenha(String value) {
    final _$actionInfo =
        _$_UsuarioActionController.startAction(name: '_Usuario.changeSenha');
    try {
      return super.changeSenha(value);
    } finally {
      _$_UsuarioActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeDataNascimento(String value) {
    final _$actionInfo = _$_UsuarioActionController.startAction(
        name: '_Usuario.changeDataNascimento');
    try {
      return super.changeDataNascimento(value);
    } finally {
      _$_UsuarioActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCelular(String value) {
    final _$actionInfo =
        _$_UsuarioActionController.startAction(name: '_Usuario.changeCelular');
    try {
      return super.changeCelular(value);
    } finally {
      _$_UsuarioActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
email: ${email},
cpf: ${cpf},
senha: ${senha},
dataNascimento: ${dataNascimento},
celular: ${celular}
    ''';
  }
}
