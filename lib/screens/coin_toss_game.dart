import 'package:flutter/material.dart';
import 'dart:math';

class CoinTossGame extends StatefulWidget {
  @override
  _CoinTossGameState createState() => _CoinTossGameState();
}

class _CoinTossGameState extends State<CoinTossGame> {
  String _resultado = "Escolha Cara ou Coroa!";
  String _escolhaUsuario = "";
  String _escolhaComputador = "";

  void jogar(String escolhaUsuario) {
    final Random random = Random();
    String escolhaComputador = random.nextBool() ? "Cara" : "Coroa";
    String resultado;

    if (escolhaUsuario == escolhaComputador) {
      resultado = "Você ganhou!";
    } else {
      resultado = "Você perdeu!";
    }

    setState(() {
      _escolhaUsuario = escolhaUsuario;
      _escolhaComputador = escolhaComputador;
      _resultado = resultado;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cara ou Coroa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Você escolheu: $_escolhaUsuario",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Computador escolheu: $_escolhaComputador",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              _resultado,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: ["Cara", "Coroa"].map((opcao) {
                return ElevatedButton(
                  onPressed: () => jogar(opcao),
                  child: Text(opcao),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
