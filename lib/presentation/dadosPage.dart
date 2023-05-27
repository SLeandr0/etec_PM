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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
              width: 200.0,
              height: 300.0,
              child: Card(child: Image.network(dados.image))
            ),
            Center(
                  child: Text(dados.nome),
                )
            ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
            children: [
              Text('Telefone: ${dados.telefone}'),
              Text('Email: ${dados.email}'),
              Text('Data de Aniversario: ${dados.data}'),
          ]
          ),
              )
          ],
        ),
        ),
    );
  }
}