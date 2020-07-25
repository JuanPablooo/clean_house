import 'package:clean_house/services/api-config.dart';

class ServicoService {
  var resource = 'solicitacao';

  insereServico(servico) async {
    var response = await MyApi.insere(resource, servico);
    return response;
  }

  atualizaStatus(id, status) async {
    var response = await MyApi.atualiza(resource + '/status/${id}', status);
    return response;
  }
}
