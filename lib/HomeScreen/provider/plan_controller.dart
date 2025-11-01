
import 'package:flutter/material.dart';

class PlanController extends ChangeNotifier {
  final bool _isFree = false;
  String? _activePlan;

  bool get isFree => _isFree;
  String? get activePlan => _activePlan;


}
