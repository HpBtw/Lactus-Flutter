import 'package:flutter/material.dart';
import 'package:sprint3flutter/components/banco_leite_card.dart';
import 'package:sprint3flutter/model/banco_leite.dart';
import 'package:sprint3flutter/navigation/app_routes.dart';
import 'package:sprint3flutter/repository/banco_leite_repository.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  late List<BancoLeite> bancos;

  @override
  void initState() {
    super.initState();
    bancos = BancoLeiteRepository.getAllBancos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bancos de Leite Próximos'),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: bancos.length,
        itemBuilder: (context, index) {
          final banco = bancos[index];
          return BancoLeiteCard(
            banco: banco,
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.detail,
                arguments: banco,
              );
            },
          );
        },
      ),
    );
  }
}