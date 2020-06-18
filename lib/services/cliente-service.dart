import 'package:http/http.dart' as http;



class ClienteService {
  String url = 'http://192.168.15.10:8080/v1/clientes';
  insereCliente(client) async{
    var response = await http.post(url, body: client);
    return response;
  }
}
