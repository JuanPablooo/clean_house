import 'dart:convert';

import 'package:clean_house/models/api/cidade.dart';
import 'package:clean_house/models/api/endereco.dart';
import 'package:clean_house/models/api/servicos-api.dart';
import 'package:clean_house/models/api/solicitacao-servico.dart';
import 'package:clean_house/models/api/usuario-api.dart';

class Profissional {
  int id;
  UsuarioApi usuario;
  String nomeCompleto;
  String cpf;
  String dataNascimento;
  String fotoPerfil;
  String videoPerfil;
  String telefoneFixo;
  String celular;
  int avaliacao;
  ServicosApi servicos;
  List<Endereco> enderecos;
  List<Cidade> cidades;
  List<SolicitacaoDeServico> solicitacaoDeServicos;

  Profissional(
      {this.id,
      this.usuario,
      this.nomeCompleto,
      this.cpf,
      this.dataNascimento,
      this.fotoPerfil,
      this.videoPerfil,
      this.telefoneFixo,
      this.celular,
      this.servicos,
      this.enderecos,
      this.cidades,
      this.solicitacaoDeServicos});

  Profissional.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    usuario = json['usuario'] != null
        ? new UsuarioApi.fromJson(json['usuario'])
        : null;
    nomeCompleto = json['nomeCompleto'];
    cpf = json['cpf'];
    dataNascimento = json['dataNascimento'];
    fotoPerfil = json['fotoPerfil'];
    videoPerfil = json['videoPerfil'];
    telefoneFixo = json['telefoneFixo'];
    celular = json['celular'];
    avaliacao = json['avaliacao'];
    servicos = json['servicos'] != null
        ? new ServicosApi.fromJson(json['servicos'])
        : null;
    if (json['enderecos'] != null) {
      enderecos = new List<Endereco>();
      json['enderecos'].forEach((v) {
        enderecos.add(new Endereco.fromJson(v));
      });
    }
    if (json['cidades'] != null) {
      cidades = new List<Cidade>();
      json['cidades'].forEach((v) {
        cidades.add(new Cidade.fromJson(v));
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
    data['cpf'] = this.cpf;
    data['dataNascimento'] = this.dataNascimento;
    data['fotoPerfil'] = this.fotoPerfil;
    data['videoPerfil'] = this.videoPerfil;
    data['telefoneFixo'] = this.telefoneFixo;
    data['celular'] = this.celular;
    data['avaliacao'] = this.avaliacao;
    if (this.servicos != null) {
      data['servicos'] = this.servicos.toJson();
    }
    if (this.enderecos != null) {
      data['enderecos'] = this.enderecos.map((v) => v.toJson()).toList();
    }
    if (this.cidades != null) {
      data['cidades'] = this.cidades.map((v) => v.toJson()).toList();
    }
    if (this.solicitacaoDeServicos != null) {
      data['solicitacaoDeServicos'] =
          this.solicitacaoDeServicos.map((v) => v.toJson()).toList();
    }
    return data;
  }

  List<SolicitacaoDeServico> getRecusados() => solicitacaoDeServicos
      .where((servico) => servico.status == "cancelado")
      .toList();

  List<SolicitacaoDeServico> getPendentes() => solicitacaoDeServicos
      .where((servico) => servico.status == "aguardando")
      .toList();
  List<SolicitacaoDeServico> getConfimados() => solicitacaoDeServicos
      .where((servico) => servico.status == "confirmado")
      .toList();

  List<SolicitacaoDeServico> getFinalizados() {
    return solicitacaoDeServicos
        .where((ser) => ser.status == "finalizado")
        .toList();
  }
}
