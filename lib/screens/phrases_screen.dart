import 'package:flutter/material.dart';
import 'dart:math';

class PhrasesScreen extends StatefulWidget {
  @override
  _PhrasesScreenState createState() => _PhrasesScreenState();
}

class _PhrasesScreenState extends State<PhrasesScreen> {
  final List<String> _phrases = [
    "Seja a mudança que você quer ver no mundo.",
    "Acredite em você mesmo e tudo será possível.",
    "O sucesso é a soma de pequenos esforços.",
    "Persista, mesmo quando for difícil.",
    "A cada dia, uma nova oportunidade.",
  ];
  String _currentPhrase = "Clique no botão para gerar uma frase.";

  void generatePhrase() {
    setState(() {
      _currentPhrase = _phrases[Random().nextInt(_phrases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _currentPhrase,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: generatePhrase,
              child: Text("Nova Frase"),
            ),
          ],
        ),
      ),
    );
  }
}
