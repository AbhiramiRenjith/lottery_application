
import 'package:flutter/material.dart';
import 'package:lottery_project/constants/color_constants.dart';

class NotificationProviderr extends ChangeNotifier {
  final List<Map<String, dynamic>> _notifications = [
    {
      'title': "Your prediction for Today’s Akshaya lottery is ready",
      'time': "3 hours ago",
      'initials': "PA",
      'color': ColorConstants.black,
      'section': "Today",
    },
    {
      'title': "Nirmal Lottery results published — check now",
      'time': "5 hours ago",
      'initials': "RS",
      'color': ColorConstants.blue,
      'section': "Today",
    },
    {
      'title': "Your premium plan expires in 2 days",
      'time': "3 hours ago",
      'initials': "SB",
      'color': ColorConstants.black,
      'section': "Yesterday",
    },
    {
      'title': "App updates & new features Tips for using predictions",
      'time': "5 hours ago",
      'initials': "IU",
      'color': ColorConstants.blue,
      'section': "Yesterday",
    },
  ];

  List<Map<String, dynamic>> get notifications => _notifications;

  Map<String, dynamic>? _lastDeleted;
  int? _lastIndex;

  
    void deleteNotification(Map<String, dynamic> notification) {
      _lastDeleted = notification;
      _lastIndex = notifications.indexOf(notification);
    _notifications.remove(notification);
    notifyListeners();
  }
  void undoDelete() {
    if (_lastDeleted != null && _lastIndex != null) {
      _notifications.insert(_lastIndex!, _lastDeleted!);
      _lastDeleted = null;
      _lastIndex = null;
      notifyListeners();
    }
  }
  void clearAll() {
    _notifications.clear();
    notifyListeners();
  }
}
