import 'package:sprint3flutter/model/banco_leite.dart';

class BancoLeiteRepository {
  static List<BancoLeite> getAllBancos() {
    return const [
      BancoLeite(
        id: '1',
        nome: 'Hospital Maternidade Leonor Mendes',
        endereco: 'Av. Celso Garcia, 2477 - Belenzinho, SP',
        distanciaKm: 3.2,
        necessidade: 'Alta',
      ),
      BancoLeite(
        id: '2',
        nome: 'Hospital das Clínicas (HC)',
        endereco: 'R. Dr. Enéas Carvalho, 255 - SP',
        distanciaKm: 5.5,
        necessidade: 'Média',
      ),
      BancoLeite(
        id: '3',
        nome: 'Hospital São Paulo',
        endereco: 'R. Napoleão de Barros, 715 - SP',
        distanciaKm: 7.1,
        necessidade: 'Normal',
      ),
    ];
  }
}