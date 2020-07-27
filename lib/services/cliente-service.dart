import 'dart:collection';
import 'package:clean_house/services/api-config.dart';

class ClienteService {
  var resource = 'clientes';
  insereCliente(client) async {
    var response = await MyApi.insere(resource, client);
    return response;
  }

  buscaClientes() async {
    var responseApi = await MyApi.busca(resource);
    return responseApi;
  }

  buscaById(id) async {
    var responseApi = await MyApi.busca(resource + '/' + id);
    return responseApi;
  }
}
