import 'package:clean_house/models/api/residencia.dart';
import 'package:clean_house/models/api/solicitacao-servico.dart';
import 'package:clean_house/models/api/usuario-api.dart';

class Cliente {
  int id;
  UsuarioApi usuario;
  String nomeCompleto;
  String dataNascimento;
  String cpf;
  String fotoPerfil;
  String telefoneFixo;
  String celular;
  List<Residencia> residencias;
  List<SolicitacaoDeServico> solicitacaoDeServicos;

  Cliente(
      {this.id,
      this.usuario,
      this.nomeCompleto,
      this.dataNascimento,
      this.cpf,
      this.fotoPerfil,
      this.telefoneFixo,
      this.celular,
      this.residencias,
      this.solicitacaoDeServicos});

  Cliente.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    usuario = json['usuario'] != null
        ? new UsuarioApi.fromJson(json['usuario'])
        : null;
    nomeCompleto = json['nomeCompleto'];
    dataNascimento = json['dataNascimento'];
    cpf = json['cpf'];
    fotoPerfil = json['fotoPerfil'];
    telefoneFixo = json['telefoneFixo'];
    celular = json['celular'];
    if (json['residencias'] != null) {
      residencias = new List<Residencia>();
      json['residencias'].forEach((v) {
        residencias.add(new Residencia.fromJson(v));
      });
    }
    if (json['solicitacaoDeServicos'] != null) {
      solicitacaoDeServicos = new List<SolicitacaoDeServico>();
      json['solicitacaoDeServicos'].forEach((v) {
        solicitacaoDeServicos.add(new SolicitacaoDeServico.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.usuario != null) {
      data['usuario'] = this.usuario.toJson();
    }
    data['nomeCompleto'] = this.nomeCompleto;
    data['dataNascimento'] = this.dataNascimento;
    data['cpf'] = this.cpf;
    data['fotoPerfil'] = this.fotoPerfil;
    data['telefoneFixo'] = this.telefoneFixo;
    data['celular'] = this.celular;
    if (this.residencias != null) {
      data['residencias'] = this.residencias.map((v) => v.toJson()).toList();
    }
    if (this.solicitacaoDeServicos != null) {
      data['solicitacaoDeServicos'] =
          this.solicitacaoDeServicos.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
