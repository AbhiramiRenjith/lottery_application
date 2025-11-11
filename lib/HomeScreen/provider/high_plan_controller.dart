import 'package:flutter/material.dart';

class PredictionNumbersController extends ChangeNotifier {

  List<String> _predictedNumbers = [];

  List<String> get predictedNumbers => _predictedNumbers;


  void updateNumbers(List<String> newNumbers) {
    _predictedNumbers = newNumbers;
    notifyListeners();
  }
}
