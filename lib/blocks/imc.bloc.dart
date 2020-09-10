import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  var heightCtrl = new MaskedTextController(mask: '000');
  var weightCtrl = new MaskedTextController(mask: '000');
  var result = "Preencha os dados para calcular seu IMC";

  calculate() {
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text) / 100;
    double imc = weight / (height * height);

    if (imc < 18.6) {
      result = "Abaixo do peso: IMC (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc < 25) {
      result = "Peso ideal: IMC(${imc.toStringAsPrecision(2)})";
    } else if (imc >= 25 && imc < 30) {
      result = "Levemente acima do peso: IMC(${imc.toStringAsPrecision(2)})";
    } else if (imc >= 30 && imc < 35) {
      result = "Obesidade grau I: IMC (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 35 && imc < 40) {
      result = "Obesidade grau II: IMC (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 40) {
      result = "Obesidade grau III: IMC (${imc.toStringAsPrecision(2)})";
    }
  }
}
