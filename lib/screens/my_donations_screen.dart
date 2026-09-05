import 'package:flutter/material.dart';
import 'package:sprint3flutter/navigation/app_routes.dart';
import 'package:sprint3flutter/repository/doacao_repository.dart';

class MyDonationsScreen extends StatelessWidget {
  const MyDonationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final doacoes = DoacaoRepository.minhasDoacoes;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bancos Cadastrados'),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: doacoes.isEmpty
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.info_outline, size: 64, color: Colors.grey),
                    const SizedBox(height: 16),
                    const Text(
                      'Você ainda não agendou nenhuma doação',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32)
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.list);
                      },
                      child: const Text('Encontrar bancos de leite', style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: doacoes.length,
              itemBuilder: (context, index) {
                final doacao = doacoes[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: const Icon(Icons.calendar_month, color: Colors.pinkAccent),
                    title: Text(doacao.banco.nome, style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('Distância: ${doacao.banco.distanciaKm} km\nData agendada: ${doacao.dataVisita}'),
                    isThreeLine: true,
                  ),
                );
              },
            ),
    );
  }
}