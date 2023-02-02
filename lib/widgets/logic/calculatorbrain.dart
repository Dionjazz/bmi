
import 'dart:math';


class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;


 late final double _bmi = 5;


  double calculationBMI() {
    double _bmi = weight/ pow(height/100, 2);
    return _bmi;
  }

  String getresult () {
    if (calculationBMI() >= 25) {
      return 'Overweight';
    } else if (calculationBMI()>=18) {
        return 'Normal';
    } else  {
      return 'Underweight';
    }
    }

    String interpritation () {
      if (calculationBMI() >= 25) {
        return 'Слушай, видимо у тебя с собой много снэков тосляк!';
      } else if (calculationBMI()>=18) {
        return 'Normalnо! Хороший показатель продолжай следить за собой! ';
      } else  {
        return 'УУУУ, а ты недоедаешь, пора в мак! Шутка, он же закрыт... Лучше купи булку и колбасу!';
      }

    }
  }
