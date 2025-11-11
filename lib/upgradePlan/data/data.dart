
    import 'package:lottery_project/constants/color_constants.dart';

final List<Map<String, dynamic>> plans = [
      {
        'title': 'Elite Plan',
        'price': '₹599',
        'currentPlan':true,
         'color':ColorConstants.greenClr,
         'description':'All-inclusive predictions and analytics',
        'features': [
          'Predict 1ts to 9th Prizes(All prizes Unlocked)',
          '50 Numbers per Prediction',
          'Advanced Ai pattern Analysis',
          'Winning number frequency charts',
          'Monthly performance report',
          'Exclusive special draw tips',
          'Higher success optimization tools enabled',
          'Prioriry customer support'
        ],
      },
      {
        'title': 'Premium Plan',
        'price': '₹299',
         'currentPlan':false,
        'description':'Advanced predictions with higher accuracy',
        'color':ColorConstants.yellow,
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
        'title': 'Basic Plan',
        'price': '₹99',
         'currentPlan':false,
        'description':'Get started with basic predictions',
        'color':ColorConstants.homeGradientLightBlue,
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
    ];


List<Map<String,dynamic>> whyUpgrade = [
  {
    'color':ColorConstants.homeGradientLightBlue,
    'text':'Get startd with basic predictions',
  },
    {
    'color':ColorConstants.yellow,
    'text':'Advanced predictions with higher accuracy',
  },
    {
    'color':ColorConstants.greenClr,
    'text':' Higher with Probability',
  },

];