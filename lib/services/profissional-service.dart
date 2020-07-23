import 'package:clean_house/services/api-config.dart';

class ProfissionalService {
  var resource = 'profissionais';

  insereProfissional(profissional) async {
    var response = await MyApi.insere(resource, profissional);
    return response;
  }

  buscaProfissional() async {
    var responseApi = await MyApi.busca(resource);
    return responseApi;
  }

  buscaProfissionalById(id) async {
    print("buscou");
    var responseApi = await MyApi.busca(resource + '/' + id);
    print("resposta");
    print(responseApi.body);
    print("resposta");
    return responseApi;
  }
}
