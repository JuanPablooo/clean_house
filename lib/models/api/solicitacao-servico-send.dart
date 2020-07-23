import 'package:clean_house/models/api/residencia.dart';
import 'package:clean_house/models/api/servicos-api.dart';

class SolicitacaoDeServicoDTO {
  int id;
  Residencia residencia;
  int data;
  int idCliente;
  int idProfissional;
  ServicosApi servicos;
  double preco;
  String observacao;
  String status;

  SolicitacaoDeServicoDTO(
      {this.id,
      this.residencia,
      this.data,
      this.idCliente,
      this.idProfissional,
      this.servicos,
      this.preco,
      this.observacao,
      this.status});

  SolicitacaoDeServicoDTO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    residencia = json['residencia'] != null
        ? new Residencia.fromJson(json['residencia'])
        : null;
    data = json['data'];
    idProfissional = json['idProfissional'];
    idCliente = json['idCliente'];
    servicos = json['servicos'] != null
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
    data['idCliente'] = this.idCliente;
    data['idProfissional'] = this.idCliente;
    data['preco'] = this.preco;
    data['observacao'] = this.observacao;
    data['status'] = this.status;
    if (this.servicos != null) {
      data['servicos'] = this.servicos.toJson();
    }
    return data;
  }
}
