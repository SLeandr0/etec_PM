import 'package:exemplo/domain/class.dart';
import 'package:exemplo/presentation/dadosPage.dart';
import 'package:exemplo/presentation/pages/homepage.dart';
import 'package:flutter/material.dart';

class Aplication extends StatelessWidget {
  const Aplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda',
      theme: ThemeData(
        primaryColor: Colors.black38
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const HomePage(),
        '/dados':(context) {
          var dados = ModalRoute.of(context)!.settings.arguments as Dados;
          return DadosPage(dados: dados);
        }
      },
    );
  }
}