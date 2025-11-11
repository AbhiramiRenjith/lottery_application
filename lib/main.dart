import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_project/Authentication/views/create_account_screen.dart';
import 'package:lottery_project/Authentication/views/create_new_password_screen.dart';
import 'package:lottery_project/Authentication/views/forget_password_screen.dart';
import 'package:lottery_project/Authentication/views/signin_screen.dart';
import 'package:lottery_project/Authentication/views/verify_account_screen.dart';
import 'package:lottery_project/Authentication/views/verify_succsessfull_screen.dart';
import 'package:lottery_project/Authentication/views/welcome_screen.dart';
import 'package:lottery_project/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:lottery_project/History/views/history_screen.dart';
import 'package:lottery_project/HomeScreen/provider/all_lottery_provider.dart';
import 'package:lottery_project/HomeScreen/provider/carosel_provider.dart';
import 'package:lottery_project/HomeScreen/provider/high_plan_controller.dart';
import 'package:lottery_project/HomeScreen/provider/plan_controller.dart';
import 'package:lottery_project/HomeScreen/provider/winnerdetails_provider.dart';
import 'package:lottery_project/Notification/provider/notification_provider.dart';
import 'package:lottery_project/Notification/views/notication_screen.dart';
import 'package:lottery_project/PredictionSelection/provider/avilableprize_controller.dart';
import 'package:lottery_project/PredictionSelection/views/prediction_screen.dart';
import 'package:lottery_project/PredictionSelection/views/prize_list.dart';
import 'package:lottery_project/ResultScreen/provider/lottery_result_provider.dart';
import 'package:lottery_project/ResultScreen/views/lottery_result_screen.dart';
import 'package:lottery_project/profile/provider/profile_controller.dart';
import 'package:lottery_project/profile/views/profile_screen.dart';
import 'package:lottery_project/upgradePlan/views/upgrade_plan.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PlanController()),
        ChangeNotifierProvider(create: (_) => CarouselControllerProvider()),
        ChangeNotifierProvider(create: (_) => WinnerDetailsController()),
        ChangeNotifierProvider(create: (_) => AllLotteryProvider()),
        ChangeNotifierProvider(create: (_) => LotteryResultController()),
        ChangeNotifierProvider(create: (_) => ProfileController()),
        ChangeNotifierProvider(create: (_) => AvailablePrizesController()),
        ChangeNotifierProvider(create: (_) => PredictionNumbersController()),
        ChangeNotifierProvider(create: (_) => NotificationProviderr()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => WelcomeScreen(),
            '/signin': (context) => SigninScreen(),
            '/forget_password': (context) => ForgetPassword(),
            '/create_new_pass': (context) => CreateNewPasswordScreen(),
            '/verify_account': (context) => VerifyAccountScreen(),
            '/verify_success': (context) => VerifySuccsessfullScreen(),
            '/create_account': (context) => CreateAccountScreen(),
            '/bottomNav': (context) => BottomNavigationBarScreen(),
            '/lotteryResult': (context) => LotteryResultScreen(),
            '/history': (context) => HistoryScreen(),
            '/notification': (context) => NotificationsScreen(),
            '/profile': (context) => ProfileScreen(),
            '/upgradePlan': (context) => UpgradePlan(),
            '/prizeCategory': (context) => PrizeListScreen(),
            '/prediction': (context) => PredictionScreen(),
          },
          initialRoute: '/bottomNav',
        );
      },
    );
  }
}
