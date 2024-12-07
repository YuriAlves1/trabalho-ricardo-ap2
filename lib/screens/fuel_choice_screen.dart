import 'package:flutter/material.dart';

class FuelChoiceScreen extends StatefulWidget {
  @override
  _FuelChoiceScreenState createState() => _FuelChoiceScreenState();
}

class _FuelChoiceScreenState extends State<FuelChoiceScreen> {
  final TextEditingController _alcoolController = TextEditingController();
  final TextEditingController _gasolinaController = TextEditingController();
  String _resultado = "";

  void calcularCombustivel() {
    double precoAlcool = double.tryParse(_alcoolController.text) ?? 0;
    double precoGasolina = double.tryParse(_gasolinaController.text) ?? 0;

    if (precoAlcool == 0 || precoGasolina == 0) {
      setState(() {
        _resultado = "Preencha os valores corretamente!";
      });
      return;
    }

    setState(() {
      _resultado = (precoAlcool / precoGasolina < 0.7)
          ? "Abasteça com Álcool"
          : "Abasteça com Gasolina";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escolha do Combustível"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _alcoolController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Preço do Álcool"),
            ),
            TextField(
              controller: _gasolinaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Preço da Gasolina"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcularCombustivel,
              child: Text("Calcular"),
            ),
            SizedBox(height: 20),
            Text(
              _resultado,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
