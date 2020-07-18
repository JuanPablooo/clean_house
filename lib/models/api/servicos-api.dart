class ServicosApi {
  int id;
  bool passarLavarRoupa;
  bool cozinhar;
  bool faxina;

  ServicosApi({this.id, this.passarLavarRoupa, this.cozinhar, this.faxina});

  ServicosApi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    passarLavarRoupa = json['passar_lavar_roupa'];
    cozinhar = json['cozinhar'];
    faxina = json['faxina'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['passar_lavar_roupa'] = this.passarLavarRoupa;
    data['cozinhar'] = this.cozinhar;
    data['faxina'] = this.faxina;
    return data;
  }
}
