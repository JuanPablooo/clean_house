class Endereco {
  int id;
  String numero;
  String cep;
  String cidade;
  String rua;
  String bairro;
  String estado;
  String pais;
  String complemento;
  String pontoReferencia;

  Endereco(
      {this.id,
      this.numero,
      this.cep,
      this.cidade,
      this.rua,
      this.bairro,
      this.estado,
      this.pais,
      this.complemento,
      this.pontoReferencia});

  Endereco.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    numero = json['numero'];
    cep = json['cep'];
    cidade = json['cidade'];
    rua = json['rua'];
    bairro = json['bairro'];
    estado = json['estado'];
    pais = json['pais'];
    complemento = json['complemento'];
    pontoReferencia = json['pontoReferencia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['numero'] = this.numero;
    data['cep'] = this.cep;
    data['cidade'] = this.cidade;
    data['rua'] = this.rua;
    data['bairro'] = this.bairro;
    data['estado'] = this.estado;
    data['pais'] = this.pais;
    data['complemento'] = this.complemento;
    data['pontoReferencia'] = this.pontoReferencia;
    return data;
  }
}
