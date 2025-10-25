import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_project/view/signinScreen/create_new_password_screen.dart';
import 'package:lottery_project/view/signinScreen/forget_password_screen.dart';
import 'package:lottery_project/view/signinScreen/signin_screen.dart';
import 'package:lottery_project/view/signinScreen/verify_account_screen.dart';
import 'package:lottery_project/view/signinScreen/welcome_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), 
      builder: (context, child) {
        return MaterialApp(
          home:const CreateNewPasswordScreen(),
        );
      },
      
    );
  }
}
