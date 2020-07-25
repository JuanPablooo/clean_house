class UsuarioApi {
  int id;
  String email;
  String senha;
  String tipo;
  String urlVideo;
  String urlPerfil;

  UsuarioApi({this.id, this.email, this.senha, this.tipo});

  UsuarioApi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    senha = json['senha'];
    tipo = json['tipo'];
    urlVideo = json['urlVideo'];
    urlPerfil = json['urlPerfil'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['tipo'] = this.tipo;
    data['urlVideo'] = this.urlVideo;
    data['urlPerfil'] = this.urlPerfil;
    return data;
  }

  setEmail(value) => this.email = value;
  setSenha(value) => this.senha = value;
}
