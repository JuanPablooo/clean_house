import 'package:http/http.dart' as http;
import 'package:clean_house/constants/my-api.dart';

class MyApi {
  static insere(resource, body) async {
    var response = await http.post(BASE_URL + resource,
        body: body, headers: {"Content-type": "application/json"});
    return response;
  }

  static busca(resource) async {
    try {
      var response = await http.get(BASE_URL + resource);
      return response;
    } catch (e) {
      return null;
    }
  }
}
