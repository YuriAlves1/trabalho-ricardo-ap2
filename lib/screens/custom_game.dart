import 'package:flutter/material.dart';
import 'dart:math';

class CustomGame extends StatefulWidget {
  @override
  _CustomGameState createState() => _CustomGameState();
}

class _CustomGameState extends State<CustomGame> {
  final Random random = Random();
  int _numeroGerado = 0;
  String _mensagem = "Adivinhe o número entre 1 e 10!";
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numeroGerado = random.nextInt(10) + 1;
  }

  void verificarNumero() {
    int numeroUsuario = int.tryParse(_controller.text) ?? 0;

    if (numeroUsuario == _numeroGerado) {
      setState(() {
        _mensagem = "Parabéns! Você acertou!";
      });
      _numeroGerado = random.nextInt(10) + 1; // Gera novo número
    } else {
      setState(() {
        _mensagem = "Tente novamente!";
      });
    }
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adivinhação"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Digite seu número"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: verificarNumero,
              child: Text("Verificar"),
            ),
          ],
        ),
      ),
    );
  }
}
