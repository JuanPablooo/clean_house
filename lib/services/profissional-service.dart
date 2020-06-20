import 'package:clean_house/services/api-config.dart';


class ProfissionalService {
  var resource = 'profissionais';
  insereProfissional(profissional) async{
    var response = await MyApi.insere(resource, profissional) ;
    return response;
  }
}
