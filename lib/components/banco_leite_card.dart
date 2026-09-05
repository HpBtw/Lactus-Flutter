import 'package:flutter/material.dart';
import 'package:sprint3flutter/model/banco_leite.dart';

class BancoLeiteCard extends StatelessWidget {
  final BancoLeite banco;
  final VoidCallback onTap;

  const BancoLeiteCard({super.key, required this.banco, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        onTap: onTap,
        leading: const Icon(Icons.local_hospital, color: Colors.pinkAccent),
        title: Text(banco.nome, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('${banco.distanciaKm} km \nEstoque: ${banco.necessidade}'),
        isThreeLine: true,
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}