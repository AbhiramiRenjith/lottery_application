import 'package:flutter/material.dart';
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
import 'package:lottery_project/HomeScreen/provider/plan_controller.dart';
import 'package:lottery_project/ResultScreen/views/lottery_result_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    
      MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PlanController()),
      ],
      child: const MyApp(),
    ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp(
          routes: {
            '/': (context) => WelcomeScreen(),
            '/signin': (context) => SigninScreen(),
            '/forget_password': (context) => ForgetPassword(),
            '/create_new_pass': (context) => CreateNewPasswordScreen(),
            '/verify_account': (context) => VerifyAccountScreen(),
            '/verify_success': (context) => VerifySuccsessfullScreen(),
            '/create_account': (context) => CreateAccountScreen(),
            '/bottomNav':(context) => BottomNavigationBarScreen(),
            '/lotteryResult':(context) => LotteryResultScreen(),
            '/history':(context) => HistoryScreen(),
          },
          initialRoute: '/history',
        );
      },
    );
  }
}
