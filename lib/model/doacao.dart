import 'banco_leite.dart';

class Doacao {
  final BancoLeite banco;
  final String nome;
  final String cpf;
  final String idade;
  final String tipoSanguineo;
  final String dataVisita;

  const Doacao({
    required this.banco,
    required this.nome,
    required this.cpf,
    required this.idade,
    required this.tipoSanguineo,
    required this.dataVisita,
  });
}