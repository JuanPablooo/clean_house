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


  @observable
  String rua;
  @action
  changeRua(String value)=>rua = value;


  @observable
  String numero;
  @action
  changeNumero(String value)=>numero = value;

  @observable
  String cidade;
  @action
  changeCidade(String value)=>cidade = value;

  @observable
  String fotoPerfil;
  @action
  changeFotoPerfil(String value)=>fotoPerfil = value;


  @observable
  String estado;
  @action
  changeEstado(String value)=>estado = value;


  @observable
  String complemenmto;
  @action
  changeComplemento(String value)=>complemenmto = value;

  criaJsonCliente(Usuario user){
    Map jsonCliente = {
        "usuario":{
          "email": "${user.email}",
          "senha": "${user.senha}",
          "tipo": "cliente"
        },
        "nomeCompleto": "${user.nome}",
        "dataNascimento": "1998-06-19",
        "cpf": "${user.cpf}",
        "fotoPerfil": "${user.fotoPerfil}",
        "telefoneFixo": "${user.telefone}",
        "celular": "${user.celular}"
      };
    return jsonCliente;
  }
  criaJsonProfissional(Usuario user){
    Map jsonProfissional = {
        "usuario":{
          "email": "${user.email}",
          "senha": "${user.senha}",
          "tipo": "profissional"
        },
        "nomeCompleto": "${user.nome}",
        "dataNascimento": "1998-06-19",
        "cpf": "${user.cpf}",
        "fotoPerfil": "${user.fotoPerfil}",
        "telefoneFixo": "${user.telefone}",
        "celular": "${user.celular}"
      };
    return jsonProfissional;
  }

  Map<String, dynamic> toJson(Usuario user) {
    Map<String, dynamic> UsertoJson() {
      final Map<String, dynamic> data = new Map<String, dynamic>();
      data['email'] = this.email;
      data['senha'] = this.senha;
      return data;
    }
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['usuario'] = UsertoJson();
    data['nomeCompleto'] = this.nome;
    data['dataNascimento'] = this.dataNascimento;
    data['cpf'] = this.cpf;
    data['fotoPerfil'] = this.fotoPerfil;
    data['telefoneFixo'] = this.telefone;
    data['celular'] = this.celular;
    return data;
  }


}