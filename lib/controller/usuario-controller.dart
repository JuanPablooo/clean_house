import 'package:email_validator/email_validator.dart';

import 'package:clean_house/models/usuario-model.dart';
import 'package:mobx/mobx.dart';
part 'usuario-controller.g.dart';

class UsuarioController = _UsuarioControllerBase with _$UsuarioController;

abstract class _UsuarioControllerBase with Store {
  var usuario = Usuario();

  String validaEmail() {
    if (isEmpTyOrNul(usuario.email)) {
      return "o email é obrigatório";
    } else if (!EmailValidator.validate(usuario.email)) {
      return "digite um email válido";
    }
    //TODO verificar na api se o email ja existe
    return null;
  }

  String validaNome() {
    if (isEmpTyOrNul(usuario.nome)) {
      return "o nome é obrigatório";
    }
    return null;
  }

  String validaData() {
    if (isEmpTyOrNul(usuario.dataNascimento)) {
      return "a data de nascimento é obrigatória";
    }
    return null;
  }

  String validaCpf() {
    if (isEmpTyOrNul(usuario.cpf)) {
      return "o cpf é obrigatório";
    }
    return null;
  }

  String validaCelular() {
    print('valida ceulaaaaar');
    print(usuario.celular);
    if (isEmpTyOrNul(usuario.celular)) {
      return "o celular é obrigatório";
    }
    return null;
  }

  String validaTelefone() {
    print('valida telefone');
    print(usuario.telefone);
    if (isEmpTyOrNul(usuario.telefone)) {
      return "o telefone é obrigatório";
    }
    return null;
  }

  String validaSenha() {
    if (isEmpTyOrNul(usuario.senha)) {
      return "a senha é obrigatória";
    } else if (usuario.senha.length < 8) {
      return "a senha deve conter no minimo 8 caracteres";
    }
    return null;
  }

  bool isEmpTyOrNul(value) => (value == null || value.isEmpty);
}
