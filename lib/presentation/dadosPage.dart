import 'package:exemplo/domain/class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DadosPage extends StatelessWidget {
  final Dados dados;

  const DadosPage({
    super.key,
    required this.dados
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dados.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(9),
              child: Center(
                child: Image.network(dados.image),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(dados.nome),
                  Text(dados.telefone),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(dados.espace),
                  Text(dados.data),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(dados.espace),
                  Text(dados.email),
                ],
              ),
            ),
          ],
        ),
        ),
    );
  }
}