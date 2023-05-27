import 'package:exemplo/data/dadosRepository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dados = loaddados();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            Navigator.pushNamed(
              context,
              '/dados',
              arguments: dados[index]
              );
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dados[index].nome),
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: dados.length),
    );
  }
}