import 'package:flutter/material.dart';

class ProfileController extends ChangeNotifier {
 final Map<String, String> _profileDetails = {
    'name': 'Jomol',
    'location': 'Kerala',
    'phoneNumber': '9538758290',
  };

  Map<String, String> get profileDetails => _profileDetails;

}
