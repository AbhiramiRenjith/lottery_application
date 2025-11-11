


import 'package:flutter/material.dart';

class LotteryResultController extends ChangeNotifier {
  final TextEditingController numberController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  bool _showPrizeList = false;
  bool get showPrizeList => _showPrizeList;

  String _selectedLottery = '';
  String get selectedLottery => _selectedLottery;

  final List<Map<String, String>> prizeList = [
    {
      'title': '1 st Prize',
      'prize': '₹ 1,00,00,000/-',
      'number': 'AB 123456',
      'place': 'Thiruvananthapuram',
    },
    {
      'title': '2nd Prize',
      'prize': '₹ 30,00,000/-',
      'number': 'CD 654321',
      'place': 'Kochi',
    },
    {
      'title': '3rd Prize',
      'prize': '₹ 5,00,000/-',
      'number': 'EF 112233',
      'place': 'Kozhikode',
    },
  ];

  
  final List<String> lotteries = [
    'Karunya',
    'Dhanalakshmi',
    'Bhagyathara',
    'Sthree Sakthi',
  ];

    final List<String> consolationPrizes = [
    'DY86758', 'DY12345', 'DY34567', 'DY98765',
    'DY45678', 'DY87654', 'DY11223', 'DY77889',
    'DY33445', 'DY99887', 'DY44556',
  ];

  void selectLottery(String lottery) {
    _selectedLottery = lottery;
    numberController.text = lottery;
    notifyListeners();
  }

  void togglePrizeList() {
    if (numberController.text.isNotEmpty && dateController.text.isNotEmpty) {
      _showPrizeList = true;
    } else {
      _showPrizeList = false;
    }
    notifyListeners();
  }

  void resetPrizeList() {
    _showPrizeList = false;
    notifyListeners();
  }

  void setDate(String date) {
    dateController.text = date;
    notifyListeners();
  }

  @override
  void dispose() {
    numberController.dispose();
    dateController.dispose();
    super.dispose();
  }
}
