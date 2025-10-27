import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_project/view/createAccount/create_account_screen.dart';
import 'package:lottery_project/view/createNewPassword/create_new_password_screen.dart';
import 'package:lottery_project/view/forgetPassword/forget_password_screen.dart';
import 'package:lottery_project/view/signinScreen/signin_screen.dart';
import 'package:lottery_project/view/verifyAccount/verify_account_screen.dart';
import 'package:lottery_project/view/verifyAccount/verify_succsessfull_screen.dart';
import 'package:lottery_project/view/welcome/welcome_screen.dart';


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
         routes: {
          '/':(context) => WelcomeScreen(),
          '/signin':(context) => SigninScreen(),
          '/forget_password':(context) => ForgetPassword(),
          '/create_new_pass':(context) => CreateNewPasswordScreen(),
          '/verify_account':(context) => VerifyAccountScreen(),
          '/verify_success':(context) => VerifySuccsessfullScreen(),
          '/create_account':(context) => CreateAccountScreen(),
          

         },
         initialRoute: '/',
        );
      },
      
    );
  }
}
