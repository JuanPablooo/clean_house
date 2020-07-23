import 'package:clean_house/models/api/cliente.dart';
import 'package:clean_house/models/api/profissional.dart';
import 'package:clean_house/models/api/residencia.dart';
import 'package:clean_house/models/api/servicos-api.dart';

class SolicitacaoDeServico {
  int id;
  int idProfissional;
  int idCliente;
  Residencia residencia;
  int data;
  ServicosApi servicos;
  double preco;
  bool aprovado;
  String observacao;
  String status;
  Profissional profissional;
  Cliente cliente;

  SolicitacaoDeServico(
      {this.id,
      this.idProfissional,
      this.idCliente,
      this.residencia,
      this.data,
      this.servicos,
      this.preco,
      this.aprovado,
      this.observacao,
      this.status,
      this.profissional,
      this.cliente});

  SolicitacaoDeServico.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idCliente = json['idCliente'];
    idProfissional = json['idProfissional'];
    residencia = json['residencia'] != null
        ? new Residencia.fromJson(json['residencia'])
        : null;
    data = json['data'];
    servicos = json['servicos'] != null
        ? new ServicosApi.fromJson(json['servicos'])
        : null;
    preco = json['preco'];
    aprovado = json['aprovado'];
    observacao = json['observacao'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['idProfissional'] = this.idProfissional;
    data['idCliente'] = this.idCliente;
    if (this.residencia != null) {
      data['residencia'] = this.residencia.toJson();
    }
    data['data'] = this.data;
    data['preco'] = this.preco;
    data['aprovado'] = this.aprovado;
    data['observacao'] = this.observacao;
    data['status'] = this.status;
    if (this.servicos != null) {
      data['servicos'] = this.servicos.toJson();
    }
    return data;
  }
}
