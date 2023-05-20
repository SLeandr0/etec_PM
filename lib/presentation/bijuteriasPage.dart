import 'package:class_object/app/app.dart';
import 'package:class_object/domain/biju.dart';
import 'package:flutter/material.dart';

class BijuteriasPage extends StatelessWidget {
  final Bijuterias bijus;
  
  const BijuteriasPage({
    super.key,
    required this.bijus // é obrigatório entregar esse dado!!!
    });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(bijus.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Image.network(bijus.image),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(bijus.nome, style: theme.textTheme.headlineLarge,),
                  Text(
                    moeda.format(bijus.preco),
                    style: theme.textTheme.headlineLarge,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 4),
              child: Column(
                children: bijus.caracteristicas
                                               .map((e) => Text(e))
                                               .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}