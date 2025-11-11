

import 'package:flutter/material.dart';
import 'package:lottery_project/constants/color_constants.dart';

final List<Map<String, dynamic>> plans = [
      {
        'title': 'Basic Plan',
        'subtitle':'Get started with basic predictions',
        'price': '₹99',
         'currentPlan':false,
         'icon':Icons.auto_awesome,
        'description':'Get started with basic predictions',
        'color':ColorConstants.blueColor,
        'features': [
         '7th,8th & 9th Prizes Only',
         '15 Numbers per Prediction',
         'Prediction Percentage Display',
         'Multi-Prize Analytics',
         'Hot & Cold Number indicators',
         'Basic History Analytics',
         'Access to basic Support'
        ],
      },
  
      {
        'title': 'Premium Plan',
        'subtitle':'Advanced predictions with higher accuracy',
        'price': '₹299',
         'currentPlan':false,
         'icon':Icons.diamond,
        'description':'Advanced predictions with higher accuracy',
        'color':ColorConstants.darkYellow,
        'features': [
          'Predict 4th to 9th Prizes',
          '30 Numbers per Prediction',
          'Prediction Percentage Display',
          'Multi-Prize Analytics(trend)',
          'Hot & Cold Number indicators',
          'Priority Notifications'
          'Recommended for regular players'

        ],
      },
  
          {
        'title': 'Elite Plan',
        'subtitle':'Advanced predictions with higher accuracy',
        'price': '₹299',
        'currentPlan':true,
         'color':ColorConstants.darkGreen,
         'description':'All-inclusive predictions and analytics',
          'icon':Icons.workspace_premium,
        'features': [
          'Predict 1ts to 9th Prizes(All prizes Unlocked)',
          '50 Numbers per Prediction',
          'Advanced Ai pattern Analysis',
          'Winning number frequency charts',
          'Monthly performance report',
          'Exclusive special draw tips',
          'Higher success optimization tools enabled',
          'Prioriry customer support',
          
        ],
      },
    ];


List<Map<String,dynamic>> whyUpgrade = [
  {
    'color':ColorConstants.blueColor,
    'text':'Get startd with basic predictions',
  },
    {
    'color':ColorConstants.darkYellow,
    'text':'Advanced predictions with higher accuracy',
  },
    {
    'color':ColorConstants.darkGreen,
    'text':' Higher with Probability',
  },

];