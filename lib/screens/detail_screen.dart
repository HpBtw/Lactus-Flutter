import 'package:flutter/material.dart';
import 'package:sprint3flutter/model/banco_leite.dart';

class DetailScreen extends StatelessWidget {
  final BancoLeite banco;

  const DetailScreen({super.key, required this.banco});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Banco'),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(banco.nome, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: Colors.pink[900])),
            const SizedBox(height: 16),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.location_on, color: Colors.pinkAccent),
              title: const Text('Endereço'),
              subtitle: Text(banco.endereco),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.directions_car, color: Colors.pinkAccent),
              title: const Text('Distância'),
              subtitle: Text('${banco.distanciaKm} km de você'),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.warning_amber_rounded, color: Colors.pinkAccent),
              title: const Text('Estoque Atual'),
              subtitle: Text(banco.necessidade),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16)
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Interesse de doação registrado!'))
                  );
                },
                child: const Text('Iniciar Doação', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}