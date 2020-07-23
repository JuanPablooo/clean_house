class UsuarioApi {
  int id;
  String email;
  String senha;
  String tipo;

  UsuarioApi({this.id, this.email, this.senha, this.tipo});

  UsuarioApi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    senha = json['senha'];
    tipo = json['tipo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['tipo'] = this.tipo;
    return data;
  }

  setEmail(value) => this.email = value;
  setSenha(value) => this.senha = value;
}
