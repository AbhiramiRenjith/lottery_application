
import 'package:flutter/material.dart';

class PlanController extends ChangeNotifier {
  final bool _isFree = false;
final String _activePlan = "high";
  
  //String? _activePlan;

  bool get isFree => _isFree;
  String? get activePlan => _activePlan;


}
