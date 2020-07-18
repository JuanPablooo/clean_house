import 'package:clean_house/models/api/residencia.dart';
import 'package:clean_house/models/api/servicos-api.dart';

class SolicitacaoDeServico {
  int id;
  Residencia residencia;
  int data;
  ServicosApi servicos;
  double preco;
  String observacao;
  String status;

  SolicitacaoDeServico(
      {this.id,
      this.residencia,
      this.data,
      this.servicos,
      this.preco,
      this.observacao,
      this.status});

  SolicitacaoDeServico.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    residencia = json['residencia'] != null
        ? new Residencia.fromJson(json['residencia'])
        : null;
    data = json['data'];
    servicos = json['servicos'] == null
        ? new ServicosApi.fromJson(json['servicos'])
        : null;
    preco = json['preco'];
    observacao = json['observacao'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.residencia != null) {
      data['residencia'] = this.residencia.toJson();
    }
    data['data'] = this.data;
    data['preco'] = this.preco;
    data['observacao'] = this.observacao;
    data['status'] = this.status;
    if (this.servicos != null) {
      data['servicos'] = this.servicos.toJson();
    }
    return data;
  }
}
