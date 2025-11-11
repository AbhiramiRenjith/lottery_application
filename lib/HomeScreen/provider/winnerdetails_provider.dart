import 'package:flutter/material.dart';

class WinnerDetailsController with ChangeNotifier {
  
  final List<Map<String, dynamic>> _winnerList = [
    {
      'name': 'Anithya Suresh',
      'ticketName': 'Bhagyathara',
      'ticketNumber': 'NG-789012',
      'location': 'Kollam, Kerala',
    },
    {
      'name': 'anju Menon',
      'ticketName': 'Dhanalakshmi',
      'ticketNumber': 'LS-456321',
      'location': 'Ernakulam, Kerala',
    },
    {
      'name': 'Sneha Prakash',
      'ticketName': 'Sthree Sakthi',
      'ticketNumber': 'MW-123987',
      'location': 'Kozhikode, Kerala',
    },
    {
      'name': 'Nithin Raj',
      'ticketName': 'karunya Plus',
      'ticketNumber': 'GC-654123',
      'location': 'Trivandrum, Kerala',
    },
  ];

  int _currentIndex = 0; 

  List<Map<String, dynamic>> get winnerList => _winnerList;
  int get currentIndex => _currentIndex;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners(); 
  }
}
