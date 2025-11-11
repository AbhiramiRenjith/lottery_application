import 'package:flutter/material.dart';

class CarouselControllerProvider with ChangeNotifier {
 final List<String> _imageList = [
    'images/bannerone.png',
    'images/bannerone.png',
    'images/bannerone.png',
    'images/bannerone.png',
  ];
  int _currentIndex = 0;

  List<String> get imageList => _imageList;
  int get currentIndex => _currentIndex;
  

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

 
}
