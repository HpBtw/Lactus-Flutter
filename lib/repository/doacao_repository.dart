import 'package:sprint3flutter/model/doacao.dart';

class DoacaoRepository {
  static final List<Doacao> minhasDoacoes = [];

  static void agendarDoacao(Doacao doacao) {
    minhasDoacoes.add(doacao);
  }
}