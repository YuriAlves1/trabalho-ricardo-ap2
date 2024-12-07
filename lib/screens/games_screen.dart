import 'package:flutter/material.dart';
import 'jokenpo_game.dart';
import 'coin_toss_game.dart';
import 'custom_game.dart';

class GamesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JokenpoGame()),
                );
              },
              child: Text("Jokenpô"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CoinTossGame()),
                );
              },
              child: Text("Cara ou Coroa"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomGame()),
                );
              },
              child: Text("Jogo Livre"),
            ),
          ],
        ),
      ),
    );
  }
}
