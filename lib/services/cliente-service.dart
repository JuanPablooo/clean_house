import 'dart:collection';
import 'package:clean_house/services/api-config.dart';


class ClienteService {
  var resource = 'clientes';
  insereCliente(client) async{
    var response = await MyApi.insere(resource, client) ;
    return response;
  }
}
