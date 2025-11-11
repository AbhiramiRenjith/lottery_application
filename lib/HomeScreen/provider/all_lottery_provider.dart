import 'package:flutter/material.dart';

class AllLotteryProvider with ChangeNotifier {
 final List<Map<String, dynamic>> _allLotteries = [
    {
      'image': 'images/bhagyathara.png',
      'ticketName': 'Bhagyathara',
      'totalPrizes': 7,
    },
    {
      'image': 'images/sthreesakthi.png',
      'ticketName': 'Sthree Sakthi',
      'totalPrizes': 7,
    },
    {
      'image': 'images/dhanalakshmi.png',
      'ticketName': 'Dhanalakshmi',
      'totalPrizes': 7,
    },
    {
      'image': 'images/karunya.png',
      'ticketName': 'Karunya Plus',
      'totalPrizes': 7,
    },
  ];

  List<Map<String, dynamic>> get allLotteries => _allLotteries;

 
}
