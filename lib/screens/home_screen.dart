import 'package:flutter/material.dart';
import 'package:sprint3flutter/navigation/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.favorite, size: 100, color: Colors.pinkAccent),
              const SizedBox(height: 24),
              Text(
                'Bem-vinda ao Projeto Lactus!',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold, color: Colors.pink[900]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Conectando nutrizes a bancos de leite humano de forma simples e ágil.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16)
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.list);
                  },
                  child: const Text('Encontrar Bancos de Leite', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}