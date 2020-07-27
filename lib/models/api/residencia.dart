import 'package:clean_house/models/api/endereco.dart';

class Residencia {
  int id;
  int quantidadeQuartos;
  int quantidadeBanheiros;
  String nome;
  Endereco endereco;

  Residencia(
      {this.id,
      this.quantidadeQuartos,
      this.quantidadeBanheiros,
      this.nome,
      this.endereco});

  Residencia.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantidadeQuartos = json['quantidadeQuartos'];
    quantidadeBanheiros = json['quantidadeBanheiros'];
    nome = json['nome'];
    endereco = json['endereco'] != null
        ? new Endereco.fromJson(json['endereco'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['quantidadeQuartos'] = this.quantidadeQuartos;
    data['quantidadeBanheiros'] = this.quantidadeBanheiros;
    data['nome'] = this.nome;
    if (this.endereco != null) {
      data['endereco'] = this.endereco.toJson();
    }
    return data;
  }
}
