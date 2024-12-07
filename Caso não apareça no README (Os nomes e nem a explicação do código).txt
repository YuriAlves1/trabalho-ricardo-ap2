# ppdmap2

A new Flutter project created with FlutLab - https://flutlab.io

## Getting Started

A few resources to get you started if this is your first Flutter project:

- https://flutter.dev/docs/get-started/codelab
- https://flutter.dev/docs/cookbook

For help getting started with Flutter, view our
https://flutter.dev/docs, which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Getting Started: FlutLab - Flutter Online IDE

- How to use FlutLab? Please, view our https://flutlab.io/docs
- Join the discussion and conversation on https://flutlab.io/residents

Nome Dos Alunos da Equipe:
•Yuri Alves Nogueira
•Braima Mane
•Cristian Ribeiro Calaço
•André Barreto da Silva Neto

Matéria: PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor: Ricardo Holanda

Link do Video do YouTube: https://youtu.be/zk-WJIU8Hqg

Explicação do código:

1. Arquivo principal: main.dart
Este arquivo é o ponto de entrada da aplicação. Ele configura a estrutura inicial do app:
Função main: Inicia o aplicativo chamando o widget principal MyApp.
Classe MyApp:
Define o tema geral do app (usando a cor primária azul).
Define a tela inicial como HomeScreen.
Classe HomeScreen:
Exibe a tela principal com três botões, cada um direcionando para diferentes funcionalidades:
Escolha do combustível.
Frases motivacionais.
Jogos.

2. Tela de escolha de combustível: fuel_choice_screen.dart
Aqui o usuário pode determinar se é mais vantajoso abastecer com álcool ou gasolina.
Função calcularCombustivel:
Calcula a relação entre os preços (álcool/gasolina).
Sugere o combustível mais vantajoso (álcool se < 0.7, caso contrário gasolina).
Interface:
Campos para inserir os preços do álcool e da gasolina.
Botão "Calcular" para exibir o resultado.

3. Tela de frases: phrases_screen.dart
Esta tela gera frases motivacionais aleatórias.
Lista de frases: Um conjunto pré-definido de frases motivacionais.
Função generatePhrase: Escolhe aleatoriamente uma frase da lista.
Interface:
Exibe a frase atual.
Botão "Nova Frase" para gerar uma nova frase.

4. Tela de jogos: games_screen.dart
Esta tela lista os jogos disponíveis.
Botões de navegação:
Jokenpô (Pedra, Papel e Tesoura).
Cara ou Coroa.
Jogo Livre (um jogo de adivinhação de números).
Cada botão leva para a respectiva funcionalidade.

5. Jogo de Jokenpô: jokenpo_game.dart
Este jogo implementa a lógica de Pedra, Papel e Tesoura:
Opções: Pedra, Papel e Tesoura.
Função jogar:
Compara a escolha do usuário com a escolha aleatória do computador.
Determina o resultado (Vitória, Derrota ou Empate).
Interface:
Exibe as escolhas do jogador e do computador.
Mostra o resultado do jogo.
Botões para selecionar a jogada.

6. Jogo de adivinhação: custom_game.dart
O jogador tenta adivinhar um número entre 1 e 10.
Número aleatório: Gerado ao iniciar o jogo.
Função verificarNumero:
Verifica se a entrada do jogador corresponde ao número gerado.
Atualiza a mensagem para "Parabéns!" em caso de acerto ou "Tente novamente!" caso contrário.
Gera um novo número após um acerto.
Interface:
Mensagem indicando o progresso.
Campo para entrada do número.
Botão para verificar.

7. Jogo de Cara ou Coroa: coin_toss_game.dart
Simula um jogo de Cara ou Coroa.
Escolha aleatória: O computador escolhe "Cara" ou "Coroa" aleatoriamente.
Função jogar:
Compara a escolha do jogador com a do computador.
Atualiza o resultado do jogo (Vitória ou Derrota).
Interface:
Exibe as escolhas e o resultado.
Botões para escolher "Cara" ou "Coroa".

Funcionamento geral
O aplicativo começa na Tela Principal (HomeScreen) com botões para acessar as funcionalidades.
As telas utilizam o Navigator para transições entre elas.
Cada tela implementa sua própria lógica e interface, com interações dinâmicas baseadas em estado (StatefulWidget).

Resumo
A aplicação demonstra uma boa organização e separação de responsabilidades, com:
Navegação clara entre telas.
Funções interativas variadas (cálculos, jogos, frases).
Uso eficiente de widgets do Flutter (Scaffold, Column, ElevatedButton, etc.).
Funcionalidades simples, mas bem implementadas.