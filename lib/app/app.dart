import 'package:class_object/domain/biju.dart';
import 'package:class_object/presentation/bijuteriasPage.dart';
import 'package:class_object/presentation/page/homePage.dart';
import 'package:flutter/material.dart';

final moeda = NumberFormat.currency(
  locale: 'pt-br',
  symbol: 'R\$'
);

class NumberFormat {
  static currency({required String locale, required String symbol}) {}
}class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Loja de Penhores",
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const HomePage(),
        '/acessorios':(context) {
          var bijus = ModalRoute.of(context)!.settings.arguments as Bijuterias;
          return BijuteriasPage(bijus: bijus);
        },
      },
      home: const HomePage(),
    );
  }
}