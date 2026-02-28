import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Center(
            child: Text('2Dadoos', style: TextStyle(color: Colors.white70)),
          ),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  const Dadoos({super.key});

  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int dadoEsquerdo = 1;
  int dadoDireito = 1;

  void sorteaDados() {
    setState(() {
      dadoEsquerdo = Random().nextInt(6) + 1;
      dadoDireito = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.transparent,
              overlayColor: Colors.transparent,
            ),
            onPressed: () {
              sorteaDados();
            },
            child: Image.asset("assets/images/dado$dadoEsquerdo.png"),
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.transparent, // Colors.transparent,
              overlayColor: Colors.transparent,
            ),
            onPressed: () {
              sorteaDados();
            },
            child: Image.asset("assets/images/dado$dadoDireito.png"),
          ),
        ),
      ],
    );
  }
}
