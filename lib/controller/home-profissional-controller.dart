import 'package:clean_house/models/cliente-model.dart';
import 'package:clean_house/models/profissional.dart';
import 'package:clean_house/models/servico-model.dart';

class HomeProfissionalController {
  HomeProfissionalController({this.servicos});

  List<Servico> servicos = List<Servico>();
  findServicos() {
    Cliente cliente = Cliente(id: 1, nome: 'juan');
    Cliente cliente2 = Cliente(id: 2, nome: 'Maria');
    Profissional profissional = Profissional(id: 3, nome: 'Aparecida');

    Servico servico = Servico(
        cliente: cliente,
        profissional: profissional,
        data: '10/07/2020',
        status: 'solicitado',
        endereco: 'Osasco rua das araras',
        horario: '09',
        preco: '110');
    Servico servico2 = Servico(
        cliente: cliente2,
        profissional: profissional,
        data: '10/08/2020',
        status: 'solicitado',
        endereco: 'Osasco rua das laranjeiras',
        horario: '10',
        preco: '100');
    List<Servico> servicosSupport = List<Servico>();
    servicosSupport.add(servico);
    servicosSupport.add(servico2);
    this.servicos = servicosSupport;
  }
}
