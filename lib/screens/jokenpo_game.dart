import 'package:flutter/material.dart';
import 'dart:math';

class JokenpoGame extends StatefulWidget {
  @override
  _JokenpoGameState createState() => _JokenpoGameState();
}

class _JokenpoGameState extends State<JokenpoGame> {
  final List<String> _opcoes = ["Pedra", "Papel", "Tesoura"];
  String _resultado = "Escolha uma opção abaixo!";
  String _escolhaUsuario = "";
  String _escolhaComputador = "";

  void jogar(String escolhaUsuario) {
    final Random random = Random();
    String escolhaComputador = _opcoes[random.nextInt(3)];
    String resultado;

    if (escolhaUsuario == escolhaComputador) {
      resultado = "Empate!";
    } else if ((escolhaUsuario == "Pedra" && escolhaComputador == "Tesoura") ||
        (escolhaUsuario == "Papel" && escolhaComputador == "Pedra") ||
        (escolhaUsuario == "Tesoura" && escolhaComputador == "Papel")) {
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
        title: Text("Jokenpô"),
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
              children: _opcoes.map((opcao) {
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
