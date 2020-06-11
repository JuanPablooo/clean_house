import 'package:mobx/mobx.dart';

part 'usuario-model.g.dart';

class Usuario = _Usuario with _$Usuario;

abstract class _Usuario with Store{

  @observable
  String nome;
  @action
  changeNome(String value) => nome = value;

  @observable
  String email;
  @action
  changeEmail(String value) => email = value;

  @observable
  String cpf;
  @action
  changeCpf(String value)=> cpf = value;

  @observable
  String senha;
  @action
  changeSenha(String value)=> senha = value;

  @observable
  String dataNascimento;
  @action
  changeDataNascimento(String value) => dataNascimento = value;

  @observable
  String celular;
  @action
  changeCelular(String value)=>celular = value;

  @observable
  String telefone;
  @action
  changeTelefone(String value)=>telefone = value;

  @observable
  String cep;
  @action
  changeCep(String value)=>cep = value;

  @observable
  String bairro;
  @action
  changeBairro(String value)=>bairro = value;



}