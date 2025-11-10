import 'package:lottery_project/constants/color_constants.dart';

final List<Map<String, dynamic>> winnerList = [
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


/////
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


final Map<String,dynamic> profileDetails = {
  'name':'Jomol',
  'location':'Kerala',
  'PhoneNumber':'9538751290'


};
  


  
  final List<Map<String, dynamic>> allLotteries = const [
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

   final List<String> consolationPrizes = [
      'DY86758', 'DY12345', 'DY34567', 'DY98765',
      'DY45678', 'DY87654', 'DY11223', 'DY77889',
      'DY33445', 'DY99887', 'DY44556',
    ];





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









final List<Map<String, dynamic>> historyList = [
  {
    "lotteryName": "Sthree Sakthi",
    "date": "25-10-2025",
    "prize": "1st Prize",
    "plan": "Plan 3",
    "ticketNo": "WW452696",
    "status": "Drawn",
    "result": "No Match",
    "resultColor": ColorConstants.greyColor,
  },
  {
    "lotteryName": "Karunya Plus",
    "date": "26-10-2025",
    "prize": "1st Prize",
    "plan": "Plan 3",
    "ticketNo": "RR597890",
    "status": "Drawn",
    "result": "Close Match",
    "resultColor": ColorConstants.greenClr,
  },
  {
    "lotteryName": "Dhanalakshmi",
    "date": "27-10-2025",
    "prize": "7th Prize",
    "plan": "Plan 1",
    "ticketNo": "RV234567",
    "status": "Pending",
    "result": "",
    "resultColor": ColorConstants.greyColor,
  },
  {
    "lotteryName": "Win Win",
    "date": "30-10-2025",
    "prize": "2nd Prize",
    "plan": "Plan 2",
    "ticketNo": "ER778899",
    "status": "Pending",
    "result": "",
    "resultColor": ColorConstants.greyColor,
  },
];


List<Map<String,dynamic>> prizeCategory = [
  {
    'prize':'FIRST PRIZE',
    'amount':'₹80 Lakh',
    'date':'DRAW:25 OCT 2025',

  },
  {
     'prize':'SECOND PRIZE',
    'amount':'₹10 Lakh',
    'date':'DRAW:25 OCT 2025',
  },
    {
     'prize':'THIRD PRIZE',
    'amount':'₹1 Lakh',
    'date':'DRAW:25 OCT 2025',
  },
      {
     'prize':'FOURTH PRIZE',
    'amount':'₹5,000',
    'date':'DRAW:25 OCT 2025',
  },
       {
     'prize':'FOURTH PRIZE',
    'amount':'₹1000',
    'date':'DRAW:25 OCT 2025',
  },
  


];