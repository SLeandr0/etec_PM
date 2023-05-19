import 'package:cardapio/app/app.dart';
import 'package:cardapio/domain/lanche.dart';
import 'package:flutter/material.dart';

class LanchePage extends StatelessWidget {
  final Lanche lanche;

  const LanchePage({
    super.key,
    required this.lanche // é obrigatório (por causa do ´requered´)
    });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // recupera o tema da aplicacao - estilo de fonte ´x´ - cor de fundo ´y´

    return Scaffold(
      appBar: AppBar(
        title: Text(lanche.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Image.network(lanche.imagem), // network é para ir na internet baixar e mostrar
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(lanche.nome, style: theme.textTheme.headline5),
                  Text(
                    moeda.format(lanche.preco),
                    style: theme.textTheme.headline6,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 4),
              child: Column(
                children: lanche.ingredientes // children é um vetor
                                             .map((e) => Text(e)) // converte em algo em qualquer coisas
                                             .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}