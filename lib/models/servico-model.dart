import 'package:clean_house/models/cliente-model.dart';
import 'package:clean_house/models/profissional.dart';

class Servico {
  Servico({
    this.profissional,
    this.cliente,
    this.endereco,
    this.data,
    this.horario,
    this.status,
    this.preco,
  });

  Profissional profissional;
  Cliente cliente;
  String endereco;
  String data;
  String horario;
  String status;
  String preco;
}
