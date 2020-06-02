import 'package:email_validator/email_validator.dart';

import 'package:clean_house/models/usuario-model.dart';
import 'package:mobx/mobx.dart';
part 'usuario-controller.g.dart';

class UsuarioController =  _UsuarioControllerBase with _$UsuarioController;

abstract class _UsuarioControllerBase with Store{
  var usuario = Usuario();

  String validadeEmail(){
    if( ! EmailValidator.validate(usuario.email) ){

    }
    return null ;
  }
  String validaNome(){
    if( usuario.nome.isEmpty ){
      return "o nome é obrigatório";
    }
    return null;
  }

}