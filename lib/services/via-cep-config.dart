import 'package:http/http.dart' as http;
import 'package:clean_house/constants/my-api.dart';

class ApiViaCep {
  static bucarEnderecoByCep(String valor) async {
    String cep = valor.trim().replaceAll('teste', '');
    return cep;
    // var response = await http.get('viacep.com.br/ws/$valor/json/');
    // return response;
  }
}
