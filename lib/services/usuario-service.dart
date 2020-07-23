import 'package:clean_house/models/api/usuario-api.dart';
import 'package:clean_house/services/api-config.dart';

class UsuarioService {
  var resource = 'login';

  login(user) async {
    var response = await MyApi.insere(resource, user);
    return response;
  }
}
