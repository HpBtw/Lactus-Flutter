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
      BancoLeite(
        id: '4',
        nome: 'Hospital Maternidade Vila Nova Cachoeirinha',
        endereco: 'Av. Dep. Emílio Carlos, 3100 - Cachoeirinha, SP',
        distanciaKm: 8.4,
        necessidade: 'Alta',
      ),
      BancoLeite(
        id: '5',
        nome: 'Amparo Maternal',
        endereco: 'R. Loefgren, 1901 - Vila Clementino, SP',
        distanciaKm: 6.8,
        necessidade: 'Média',
      ),
      BancoLeite(
        id: '6',
        nome: 'Hospital Municipal do Tatuapé',
        endereco: 'Av. Celso Garcia, 4815 - Tatuapé, SP',
        distanciaKm: 4.1,
        necessidade: 'Crítica',
      ),
      BancoLeite(
        id: '7',
        nome: 'Hospital Maternidade Interlagos',
        endereco: 'R. Leonor Fernandes da Costa, 211 - Interlagos, SP',
        distanciaKm: 15.3,
        necessidade: 'Alta',
      ),
      BancoLeite(
        id: '8',
        nome: 'Hospital Geral de Pedreira',
        endereco: 'R. João Francisco de Moura, 251 - Vila Campo Grande, SP',
        distanciaKm: 18.0,
        necessidade: 'Normal',
      ),
      BancoLeite(
        id: '9',
        nome: 'Hospital do Mandaqui',
        endereco: 'R. Voluntários da Pátria, 4301 - Santana, SP',
        distanciaKm: 9.2,
        necessidade: 'Crítica',
      ),
      BancoLeite(
        id: '10',
        nome: 'Hospital Estadual de Diadema',
        endereco: 'Av. José Bonifácio, 1641 - Serraria, Diadema - SP',
        distanciaKm: 21.5,
        necessidade: 'Média',
      ),
    ];
  }
}