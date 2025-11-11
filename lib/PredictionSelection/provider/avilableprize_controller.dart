import 'package:flutter/material.dart';

class AvailablePrizesController extends ChangeNotifier {
  final List<Map<String, String>> _prizeCategory = [
    {
      'prize': 'FIRST PRIZE',
      'amount': '₹80 Lakh',
      'date': 'DRAW: 25 OCT 2025',
    },
    {
      'prize': 'SECOND PRIZE',
      'amount': '₹10 Lakh',
      'date': 'DRAW: 25 OCT 2025',
    },
    {
      'prize': 'THIRD PRIZE',
      'amount': '₹1 Lakh',
      'date': 'DRAW: 25 OCT 2025',
    },
    {
      'prize': 'FOURTH PRIZE',
      'amount': '₹5,000',
      'date': 'DRAW: 25 OCT 2025',
    },
    {
      'prize': 'FIFTH PRIZE',
      'amount': '₹1,000',
      'date': 'DRAW: 25 OCT 2025',
    },
  ];

  List<Map<String, String>> get prizeCategory => _prizeCategory;

}
