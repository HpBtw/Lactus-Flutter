import 'package:flutter/material.dart';
import 'package:sprint3flutter/model/banco_leite.dart';
import 'package:sprint3flutter/model/doacao.dart';
import 'package:sprint3flutter/navigation/app_routes.dart';
import 'package:sprint3flutter/repository/doacao_repository.dart';

class FormScreen extends StatefulWidget {
  final BancoLeite banco;
  const FormScreen({super.key, required this.banco});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _nomeController = TextEditingController();
  final _cpfController = TextEditingController();
  final _idadeController = TextEditingController();
  final _tipoSanguineoController = TextEditingController();
  final _dataController = TextEditingController();

  void _finalizarAgendamento() {
    if (_nomeController.text.isEmpty || _dataController.text.isEmpty) return;

    final novaDoacao = Doacao(
      banco: widget.banco,
      nome: _nomeController.text,
      cpf: _cpfController.text,
      idade: _idadeController.text,
      tipoSanguineo: _tipoSanguineoController.text,
      dataVisita: _dataController.text,
    );

    DoacaoRepository.agendarDoacao(novaDoacao);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Doação agendada com sucesso!')),
    );

    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.home,
      (route) => false,
    );
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _cpfController.dispose();
    _idadeController.dispose();
    _tipoSanguineoController.dispose();
    _dataController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agendar Doação'),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text('Agendando em: ${widget.banco.nome}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            TextField(controller: _nomeController, decoration: const InputDecoration(labelText: 'Nome Completo', border: OutlineInputBorder())),
            const SizedBox(height: 12),
            TextField(controller: _cpfController, decoration: const InputDecoration(labelText: 'CPF', border: OutlineInputBorder()), keyboardType: TextInputType.number),
            const SizedBox(height: 12),
            TextField(controller: _idadeController, decoration: const InputDecoration(labelText: 'Idade', border: OutlineInputBorder()), keyboardType: TextInputType.number),
            const SizedBox(height: 12),
            TextField(controller: _tipoSanguineoController, decoration: const InputDecoration(labelText: 'Tipo Sanguíneo', border: OutlineInputBorder())),
            const SizedBox(height: 12),
            TextField(controller: _dataController, decoration: const InputDecoration(labelText: 'Data da Visita (DD/MM/AAAA)', border: OutlineInputBorder())),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent, foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 16)),
                onPressed: _finalizarAgendamento,
                child: const Text('Confirmar Agendamento', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}