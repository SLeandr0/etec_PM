import 'package:class_object/app/app.dart';
import 'package:class_object/data/bijusRepository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bijuterias = loadBijuterias();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demonstrativo de Acessórios'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            Navigator.pushNamed(
              context,
              '/acessorios',
              arguments: bijuterias[index],
              );
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(bijuterias[index].nome),
                Text(moeda.format(bijuterias[index].preco))
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: bijuterias.length,
      ),
    );
  }
}